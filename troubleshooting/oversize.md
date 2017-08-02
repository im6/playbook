### node.js: body-parser
```js
var bodyParser = require('body-parser');
app.use(bodyParser.json({
  limit: "10mb"
}));
```
### nginx: post body size
```yaml
client_max_body_size 10m;
```
