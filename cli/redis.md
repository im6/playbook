[digital occean tutorial](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-redis)  
[official reference](https://redis.io/topics/quickstart)

## Installation
```hash
wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make

## Make file
make test ## optional step, better to have
```
It is a good idea to copy both the Redis server and the command line interface in proper places, either manually using the following commands:(optional but highly recommended)
```hash
sudo cp src/redis-server /usr/local/bin/
sudo cp src/redis-cli /usr/local/bin/
```
Finally install
```hash
sudo make install.
```

## Running
```hash
redis-server #start
redis-server redis.conf #running with customize config files
```
## cli
redis-cli
```hash
ping
auth <YOURBEAUTIFULPASSWORD>
```
