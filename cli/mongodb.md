Regular CRUD: 
```bash
db.getCollection('users').find({name: "jime"})
```
Get Admin Mode: 
```
mongo
use <dbname>
use admin
db.auth("username", "password")
```
Create New User: 
```bash
db.auth("admin_username ", " admin_password ");   # Authenticate admin user
db.addUser("admin_username", " admin_password"); 
```

Update Mongo config: (add auth for exmaple)
```
service mongod status
sudo service mongod stop
cd /etc/mongod.conf
sudo service mongod start

OR:
Start mongod with --auth = true
```
