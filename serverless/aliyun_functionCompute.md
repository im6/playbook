# Hello World (command line method)

[source](https://help.aliyun.com/document_detail/51783.html)

```sh
mkdir code
cd code
touch hello_world.js # 或 hello_world.py
```

Node.js

```javascript
    'use strict';
    module.exports.handler = function(event, context, callback) {
        console.log('hello world');
        callback(null, 'hello world');
     };
```

Python

```python
    # -*- coding: utf-8 -*-
    def handler(event, context):
        print "hello world"
        return 'hello world'
```

## FC Shell

```sh
fcli shell # 进入交互模式
mks demo # 创建名为 demo 的服务
cd demo # 进入 demo 服务内

mkf {函数名称} -h {file}.{method} -d {code directory} -t {runtime environement}
mkf testHelloWorld -h hello_world.handler -d code -t nodejs6  # for example

invk testHelloWorld # execute
```
