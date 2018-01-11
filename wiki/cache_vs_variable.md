# Difference between cache and static/global variable

### Cache:
1.  is a copy of the original data whereas static variables are basic language constructs.  
2.  maintain data, among threads(thread-safe), lifetime of the copy or invalidation.  
3. clear when memory is low.  
4. involve serilization.  
5. no need to store in memory necessarily(memory, flat file, database).  

### Variable:
1. global state is "bad".  
2. do memory management yourself.  
3. application level wide.  
4. has to be memeory.  


