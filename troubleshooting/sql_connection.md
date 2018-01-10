sql connection ~ No. of thread

(CONN_MAX_AGE)  
try bigger if: 
1. want to reduce the reconnection overhead  

try smaller(even zero) if: 
1. cache
2. shared by multiple host
3. database default idle connection is smaller
4. development server creates a new thread for each request it handles,
