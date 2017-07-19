## html
include the script reference in the header
## client(react.js):
```js
import Recaptcha from 'react-recaptcha';
<Recaptcha
    sitekey="<siteKey>"
    onloadCallback={xxxx}
    verifyCallback={xxxxx}
    render="explicit"
  />
```
## server:
```js
requeste({
      url: "https://www.google.com/recaptcha/api/siteverify",
      method: "POST",
      formData: {
        response: <RESPONSE TOKEN>,
        secret: <APPSECRET>,
        remoteip: <IP>
      }
    });

```
