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
		
 ## LocalMemory: game server

 
 
