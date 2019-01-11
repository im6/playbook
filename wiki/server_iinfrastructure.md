# Server

* App Server(s)
  * Load Balance
    * nginx
    * HAProxy
    * sticky sessions
  * Reverse Proxy
  * gzip
  * max-connection(apache default: 500, request k)
* Static File Server
  * CDN
* SQL Server
  * read/write split
    * write: long connection
    * write flow: cache -> mq -> db
  * Difference server based on business requirement
  * NosQL
  * scale
    * scale up: more storage on single, vertical
    * scale out: more nodes, Horizontal 
  * Data locality
  * Race condition
  * MySQL
    * connection pool
    * thread_cache_size
    * create index
    * innodb_buffer_pool_size
    * scale: one node usually millions of records
    * master-slave
      * binlog sync
* Cache Server
  * Twenty-eight law
  * distributed/global
  * shared nothing architecture
  * Memcached/redis hashmap
  * redis cluster
* Message Queue
  * Big Volume of WRITING
* Proxy
  * Collapsed forwarding
  * Squid, Varnish
