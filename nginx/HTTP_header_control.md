```
location / {  
     proxy_pass_header X-CSRFToken;   # csrf_forward function enabled
     proxy_pass_header Server;   # do Not overwrite header's "Server" value
}
```
