[全栈缓存时代](https://segmentfault.com/a/1190000005808789)  
[浅谈Web系统设计之缓存](https://www.jianshu.com/p/345f26baa589)   
[大型web系统数据缓存设计](http://data.qq.com/article?id=2879)
## Data Type
1. pure static(CDN)
2. pure dynamic (data cache, redis/memcache)
3. static in short period of time
4. have both static and dynamic in the same page
 - 1 cdn static page
 - 2 localstorage save state of dynamic information, such as ad, login status

## Design Pattern
* Cache aside
	* Code kind of maintain two data store(db and cache)
	* Hit: read from cache
	* Miss: read from cache, failed. read from db, update cache
	* Update(lazy load): update db, mark cache as invalid afterwards.
		*  when create new record, put on db but not update cache, until next read.
		*  when update/delete record, put change directly on db, mark cache data as out-of-sync, and load until next time.
* Read through/Write through	
	* as sql proxy
	* cache updates db
	* cache loads new create record from db
* Write behind caching/Write Back
	* only update cache
	* async update db from cache
  * trade off between data sync and performance
	

## Memcached:
* distributed, same virtual pool of memory: large web server

## Redis
 * Single node redis performance maximum in general: 14k QPS
 * persistence options
	* RDB
		* snapshot into single file 
		* backup and disaster recovery
	* AOF
		* log all the operations
		* better fsync performance
		* more durable
		* bigger/slower than RDB file
* LRU
  * automatically evict old data
  * maxmemory 
  * eviction policies
		
 ## LocalMemory: localstorage, game server
 ## File cache
 - Stream(并发读写死锁)
 - CDN
 - Distributed system that have shared file drive mounted

 
 
