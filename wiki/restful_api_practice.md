## RestFul

### REST(Representational State Transfer)
- Resource
- Collection
- Url
  - URL should only contain resources(nouns) 
  - api.xxx.com/v1/xxx
  - user "-" instead of "_"
  - HTTP method play the role
    - GET: get
    - POST: create
    - DELETE: delete
    - PUT: update
    
- status code  
  - 50x: Server Error
  - 40x: Client Error
  - 30x: Redirect
  - 20x: Success
- query: (in Get Method, add these in the query string parameters)
  - Search
  - filter
  - order
  - pagination(limit, offset)
- Version: 
  - example:http://api.yourservice.com/v1/companies
- Anti-abuse
  - X-Rate-Limit-Limit :当前时间段允许的并发请求数
  - X-Rate-Limit-Remaining:当前时间段保留的请求数。
  - X-Rate-Limit-Reset:当前时间段剩余秒数
  
- Auth:
  - Bearer token
  - Http Auth token
