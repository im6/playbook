# install redis on ubuntu 16

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
