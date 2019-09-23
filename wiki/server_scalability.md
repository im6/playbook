# Server Scalability

## Consideration

- Availability
- Performance
- Reliability of Retrieval
- Manageability
- Cost

## Service

- read
- write

### method

- Dividing the Functions
- Adding Shards

## 服务器集群的伸缩性设计常见方法

### Partition 垂直扩展（Scale Up）与水平扩展（Scale Out

1. HTTP 重定向

Web 服务器可通过 Http 响应头信息中的 Location 标记来返回一个新的 URL，浏览器自动去访问这个新的 URL。

2. DNS 负载均衡
   DNS 负责将用户请求的域名映射为实际的 IP 地址，这种映射可以是一对多的（ DNS 轮询， DNS 的 A 记录，用来指定域名对应的多个 IP 地址），这样 DNS 服务器便充当负载均衡调度器。
3. 反向代理负载均衡（站点层）
   反向代理服务器的核心工作是转发 HTTP，它工作在 HTTP 层面，因此，基于反向代理的负载均衡也称为七层负载均衡。（NGINX）
4. IP 负载均衡
   网络地址转换(NAT)负载均衡工作在传输层，对数据包中的 IP 地址和端口进行修改，从而达到转发的目的，称为四层负载均衡。
5. 直接路由
   这种方式工作在数据链路层。它修改数据包的目标 MAC 地址，并没有修改目标 IP（因为这种转发工作在数据链路层，它对上层端口无能为力），然后发给实际的服务器，实际服务器的响应数据直接发回给用户，而不用经过调度器。但实际服务器必须接入外网，而且不能将调度器作为默认网关，要给实际服务器添加和调度器 IP 地址相同的 IP 别名。
6. IP 隧道
   基于 IP 隧道的负载均衡系统也可以使用 LVS 来实现，称为 LVS-TUN。与 LVS-DR 不同的是，实际服务器和调度器可以不在同一个 WAN 网段，调度器通过 IP 隧道技术来转发请求到实际服务器，所以实际服务器必须有合法的 IP 地址。基于 IP 隧道的请求转发机制，是将调度器收到的 IP 数据包封装在一个新的 IP 数据包中，转交给实际服务器，然后实际服务器的响应数据包可以直接到达用户端。基于 IP 隧道的独特方式，可以将实际服务器部署在不同的地域并根据就近原则转移请求，比如一些 CDN 服务器就是基于 IP 隧道技术实现的。

### db scale

[DB sharding](https://blog.csdn.net/bluishglc/article/details/6161475)

#### 水平拆分数据库(horizontal sharding)

- 顺序拆分：a 存 1-100， b 存 101-200
- hash 拆分
  1. 每个服务器上存储的数据量是总量的 1/n，所以单机的性能也会有提升；
  2. n 个服务器上的数据没有交集，那个服务器上数据的并集是数据的全集；
  3. 数据水平拆分到了 n 个服务器上，理论上读性能扩充了 n 倍，写性能也扩充了 n 倍（其实远不止 n 倍，因为单机的数据量变为了原来的 1/n)
- 跨节点问题  
  有表格均划分到合适的 shard 之后，所有跨越 shard 的表间关联都必须打断，在书写 sql 时，跨 shard 的 join、group by、order by 都将被禁止，需要在应用程序层面协调解决这些问题
  1. join
     只要是进行切分，跨节点 Join 的问题是不可避免的。但是良好的设计和切分却可以减少此类情况的发生。解决这一问题的普遍做法是分两次查询实现。在第一次查询的结果集中找出关联数据的 id,根据这些 id 发起第二次请求得到关联数据。
  2. count,order by,group by 以及聚合函数
     这些是一类问题，因为它们都需要基于全部数据集合进行计算。多数的代理都不会自动处理合并工作。解决方案：与解决跨节点 join 问题的类似，分别在各个节点上得到结果后在应用程序端进行合并。和 join 不同的是每个结点的查询可以并行执行，因此很多时候它的速度要比单一大表快很多。但如果结果集很大，对应用程序内存的消耗是一个问题。

#### 同步读写

1. 每个服务器上存储的数据量是和总量相同；
2. n 个服务器上的数据都一样，都是全集；
3. 理论上读性能扩充了 n 倍，写仍然是单点，写性能不变；

## 高可用

- 方法论上，高可用保证的原则是“集群化”，或者叫“冗余”。
- 通过“自动故障转移”来实现系统的高可用。

【客户端层】到【反向代理层】的高可用，是通过反向代理层的冗余来实现的。分别如下：

### 反向代理层

以 nginx 为例，有两台 nginx，一台对线上提供服务，另一台冗余以保证高可用，常见的实践是 keepalived 存活探测，相同 virtual IP 提供服务。自动故障转移：当 nginx 挂了的时候，keepalived 能够探测到，会自动的进行故障转移，将流量自动迁移到 shadow-nginx，由于使用的是相同的 virtual IP，这个切换过程对调用方是透明的。

### 站点层

【反向代理层】到【站点层】的高可用，是通过站点层的冗余来实现的。假设反向代理层是 nginx，nginx.conf 里能够配置多个 web 后端，并且 nginx 能够探测到多个后端的存活性。 自动故障转移：当 web-server 挂了的时候，nginx 能够探测到，会自动的进行故障转移，将流量自动迁移到其他的 web-server，整个过程由 nginx 自动完成，对调用方是透明的。

### 服务层

【站点层】到【服务层】的高可用，是通过服务层的冗余来实现的。“服务连接池”会建立与下游服务多个连接，每次请求会“随机”选取连接来访问下游服务。自动故障转移：当 service 挂了的时候，service-connection-pool 能够探测到，会自动的进行故障转移，将流量自动迁移到其他的 service，整个过程由连接池自动完成，对调用方是透明的（所以说 RPC-client 中的服务连接池是很重要的基础组件）。

### 缓存层

缓存层的数据冗余又有几种方式：第一种是利用客户端的封装，service 对 cache 进行双读或者双写。缓存层也可以通过支持主从同步的缓存集群来解决缓存层的高可用问题。
以 redis 为例，redis 天然支持主从同步，redis 官方也有 sentinel 哨兵机制，来做 redis 的存活性检测。自动故障转移：当 redis 主挂了的时候，sentinel 能够探测到，会通知调用方访问新的 redis，整个过程由 sentinel 和 redis 集群配合完成，对调用方是透明的。
说完缓存的高可用，这里要多说一句，业务对缓存并不一定有“高可用”要求，更多的对缓存的使用场景，是用来“加速数据访问”：把一部分数据放到缓存里，如果缓存挂了或者缓存没有命中，是可以去后端的数据库中再取数据的。

### 数据库层

主从同步，读写分离

### 读库高可用

### 写库高可用

### licensed load balancer solutions

[source](https://www.infradata.com/news-blog/5-best-load-balancers-for-2019/)

- F5 Networks BIG-IP platforms
- A10 Application Delivery & Load Balancer
- Citrix ADC (formerly NetScaler ADC)
- Avi Vantage Software Load Balancer
- Radware's Alteon Application Delivery Controller

## Scalable and Fast Data Access – Strategies and Methods

### cache

- On the request node
- Distributed Cache
- Global Cache

### Proxies

Proxies can be a great help in scaling, by coordinating multiple server requests when they are the same or quite similar. A proxy can collapse all same requests and forward only one request to the database disk, reading the data only one time. While latency time for an individual requester may increase a bit, this is offset by the ability to improve high load incidents.  
Proxies and caches can also be used together, so long as the cache is placed before the proxy, because it is working from memory and can take the load from the proxy as user volume grows.

### Indexes

Indexes basically set up a data table based upon where that data is housed. And as more data and devices are added, that data table can be enlarged too. As a request comes in the index directs the query to the right data table where it can then be broken down even further for a specific piece of that data. Far faster than searching the whole of the data. The write end of the query may be slowed, but in the end, the data is retrieved and back to the requester faster. Indexes are a great tool for scaling.

### Load balancers

Load balancers are usually placed up front so that requests are routed in the best manner. And if a distribution system is complex, there can be more than one load balancer put into place.
One challenge with load balancers is that the same requester may be routed differently during ensuing visits. This is generally a problem seen by e-commerce sites that want the shopping cart to remain through all visits. Thus, there is the ability to build in stickiness so that the same requester is always routed the same, but then node failures can be a problem. Browser caches and cookies can offset this somewhat, but it is something to think about when building a scalable site.

### Queues

When building new sites, as for a startup, write management is pretty easy. Systems are quite simple, and writes are fast. As a site grows, however, writes can take longer and longer due to factors already discussed. To plan for this, scalable web application developers will need the architecture in place to build in asynchrony, and queues are a solid solution. This allows a client to make a request, receive acknowledgment of that request, and then move on to other work, periodically checking back. Under synchronous systems, the client simply waits, doing no other work. This is an issue during heavy loads.

[source article](http://www.aosabook.org/en/distsys.html)
