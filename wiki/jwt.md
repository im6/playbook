## JSON Web Token structure
three parts separated by dots
- header: Base64Url encoded
  - type
  - algorithm 
- payload: contain claims, Base64Url encoded
  - Registered claims
  - Public claims
  - Private claims
- signature
```python
HMACSHA256(
  base64UrlEncode(header) + "." +
  base64UrlEncode(payload),
  secret)
```

```
// Header
{
  "alg": "HS256",
  "typ": "JWT"
}

// Payload
{
  // reserved claims
  "iss": "a.com",
  "exp": "1d",
  // public claims
  "http://a.com": true,
  // private claims
  "company": "A",
  "awesome": true
}

// $Signature
HS256(Base64(Header) + "." + Base64(Payload), secretKey)

// JWT
JWT = Base64(Header) + "." + Base64(Payload) + "." + $Signature
```

## Advantage
1. Compact, less verbose
2. Security-wise, SWT can only be symmetrically signed by a shared secret using the HMAC algorithm
3. JSON parsers are common in most programming languages because they map directly to objects
4. JWT is used at Internet scale, easily processed by mobile
5. in distributed system, better than cookie because sessionID can only be saved on one server, jwt can be accepted by any node behind load balancer.
6. for native application(iOS & android), more friendly than cookie/session.

## Auth Flow
1. Brower post username/password to server
2. Server auth create and return JWT token to browser
3. Receive JWT token and include it into header(http:Authorization) of all the following HTTP request
4. Server check JWT token, grab user detail and send requested data back
