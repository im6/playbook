# Java installation on ubuntu

## Ubuntu

[digital occeans](https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-on-ubuntu-18-04)

### download and install

```sh
sudo apt update
java -version
sudo apt install default-jre
java -version
sudo apt install default-jdk
javac -version
```

### set environment variable

```sh
sudo update-alternatives --config java
sudo vim /etc/environment
```

to update the env var

```vim
JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/bin/"
```

reload and verify

```sh
source /etc/environment
echo $JAVA_HOME
```
