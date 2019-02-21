```sh
wget -qO- https://get.docker.com/ | sh
sudo service docker start #启动守护进程
docker -v
sudo service docker stop #关闭守护进程

docker container ls
docker service ls -q
docker stop <container Id>
```
