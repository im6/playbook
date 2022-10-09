# install redis

## ubuntu 16

[digital occean tutorial new](https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-redis-on-ubuntu-16-04)
[gcp redis on compute](https://cloud.google.com/community/tutorials/setting-up-redis)

## cli

```sh
sudo systemctl start redis
sudo systemctl status redis
sudo systemctl restart redis
redis-cli
sudo systemctl enable redis # enable redis auto-start
ps -f -u redis # verify redis is listening
```

## ubuntu 20

[ref](https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-redis-on-ubuntu-20-04)

```sh
sudo apt update
sudo apt install redis-server
```

## config

```sh
sudo vim /etc/redis/redis.conf
```

make it listen to any ip address, and set connection password

```txt
bind 0.0.0.0 ::1
requirepass <you password>
```

## test

```sh
redis-cli
ping
auth <you password>
info
set <MYKEY> <MyValue>
get <MYKEY>
FLUSHALL
DBSIZE
```
