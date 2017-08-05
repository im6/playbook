## Regular CRUD: 
```bash
db.getCollection('users').find({"config.enable": false}).sort({createdDate:1})
db.getCollection('users').find({config: { enable: false}}).limit(50)
db.getCollection('users').find({name: "jime"}, {name: 1, address: 0, email: 1})  # projection response
db.getCollection('users').find( { "size.h": { $lt: 15 } } )
db.getCollection('users').find({name: /^Jim/,  $or:[{age: {$lt: 15, $gte: 5}}, {addr: /new york/}]})

```
## Get Admin Mode: 
```
mongo
use <dbname>
use admin
db.auth("username", "password")
```
## Create New User: 
```bash
db.auth("admin_username ", " admin_password ");   # Authenticate admin user
db.addUser("admin_username", " admin_password"); 
```

## Update Mongo config: (add auth for exmaple)
```
service mongod status
sudo service mongod stop
cd /etc/mongod.conf
sudo service mongod start

OR:
Start mongod with --auth = true
```
