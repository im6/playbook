# Docker CLI

[ruanyf](https://www.ruanyifeng.com/blog/2018/02/docker-tutorial.html)

## start

```sh
docker version
docker run hello-world
docker run --name <name> -d -it <image id>
docker container exec -it <container id> /bin/bash
docker kill <name>
```

## image

```sh
docker image ls
docker image rm <image Id> --force
docker build -t <username>/<image name> .
docker run <image Id>
docker run --env-file <env path> --name <tag name> -p <external port>:<app local port> -d <username>/<image name>
docker stop <image Id>
```

## container

```sh
docker container ls
docker container ls --all
docker ps
docker container pull <image Id>
docker container run <image Id> # pull and run
docker container kill <container Id>
docker container rm <container Id> # to save space
```

## service control

```sh
wget -qO- https://get.docker.com/ | sh
sudo service docker start #启动守护进程
docker -v
sudo service docker stop #关闭守护进程
docker service ls -q
```
