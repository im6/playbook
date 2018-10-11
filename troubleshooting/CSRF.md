## Prevent
1. Same-site cookie
```
Set-Cookie: key=value; HttpOnly; SameSite=strict
```

2. CSRF token
```
server generate token  
hide in form  
send token along with post request  
```
