### 504 GATEWAY_TIMEOUT
- load balancer Idle timeout,
- proxy_read_timeout,
  ```yaml
  send_timeout 9900;
  keepalive_timeout 9900;
  keepalive_requests 9900;
  proxy_send_timeout 9900;
  proxy_read_timeout 9900;
  proxy_connect_timeout 9900;
  ```
### Query cancelled on user's request(postgresql)
- sql adapter connection setup parameter timeout
- "set statement_timeout to 1;"

### expressjs server timeout
- server.timeout = XXX
### http/ajax timeout:
- ajax/fetch setup
	


	
	


