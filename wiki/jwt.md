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

## Advantage
1. Compact, less verbose
2. Security-wise, SWT can only be symmetrically signed by a shared secret using the HMAC algorithm
3. JSON parsers are common in most programming languages because they map directly to objects
4. JWT is used at Internet scale, easily processed by mobile
