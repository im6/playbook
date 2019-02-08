# Header Control

[Nginx 是如何启动并处理 http 请求的？](https://juejin.im/entry/5b70edfaf265da27d82990e9?utm_medium=yw&utm_source=weibo0813_2)

```yaml
location / {  
     proxy_pass_header X-CSRFToken;   # csrf_forward function enabled
     proxy_pass_header Server;   # do Not overwrite header's "Server" value
}
```
