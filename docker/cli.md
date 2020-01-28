# Docker CLI

[ruanyf](https://www.ruanyifeng.com/blog/2018/02/docker-tutorial.html)

## start

```sh
docker version
docker run hello-world
docker stop <ontainer name>
docker start <container name>
docker kill <container name>
```

## image

```sh
docker image ls
docker build -t <username>/<image name> .
docker image rm <image Id> --force
```

## container

```sh
docker container ls
docker container ls --all
docker ps
docker container pull <image Id>
docker container run <image Id> # pull and run
docker run --env-file <env path> --name <tag name> -p <external port>:<app local port> -d <username>/<image name>
docker run --name <container name> -d -it <image id>
docker container exec -it <container name> /bin/bash # log into background running container
docker container kill <container Id>
docker container rm <container name> # to save space
```

## service control

```sh
wget -qO- https://get.docker.com/ | sh
sudo service docker start #启动守护进程
docker -v
sudo service docker stop #关闭守护进程
docker service ls -q
```
