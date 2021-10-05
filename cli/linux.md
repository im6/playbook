# Linux Ubuntu Primary CLI

## directory

```sh
cd -
cd ~
```

## cursor movement

ctrl + A/E

## Execute flow

分号可以让两个 command 连续运作，不考虑 command1 的输出状态； && 则前一个指令必需没有错误信息，亦即返回值需为 0 ，则 command2 才会被执行； || 则与 && 相反

```sh
command1; command2 # type all the command and let them run
command & # means "run command in the background."
command1 && command2 # "run command1 and if it completes successfully, run command2 afterwards."
command1 | command2:  file.csv | python xxxx.py   pipeline stuff, for line in sys.stdin:
```

### concat

"\\" is used to continue typing in next line

```sh
aws cloudformation create-stack \
    --stack-name lambda-file-processing \
```

## Download & Installation

### apt-get command

```sh
sudo apt-get upgrade: actually install all the update
sudo apt-get update: update list of available pkgs
sudo apt-get --purge remove node
sudo apt-get install python-software-properties
sudo apt-get install nodejs

sudo apt-get remove nodejs
sudo apt-get purge packagename
sudo apt-get remove --purge packagename
```

### download & get:

```
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
curl -X GET --header 'header1:value1' --header 'header2:value2' 'http://<target endopint>' # endpoint testing
wget google.com -O foo.html
sudo wget -o '/Downloads' 'https://nodejs.org/dist/v6.10.3/node-v6.10.3-linux-x64.tar.xz'
```

### check ip address:

```sh
curl ifconfig.me
curl icanhazip.com
curl ipecho.net/plain
curl ifconfig.co
```

### compression & uncomp:

```
tar -czvf name-of-archive.tar.gz /path/to/directory-or-file
tar -zxvf Python-2.7.12.tgz
```

## System Info

### SSH key

```sh
ssh-keygen -t rsa -b 4096
ssh-keygen -t dsa
ssh-keygen -t ecdsa -b 521
ssh-keygen -t ed25519
```

### System Monitor

```
top
top -u tecmint
top -n 1 -b > top-output.txt
```

### Kernal info:

```
uname -a
uname -v
uname -r
```

### check ubuntu version:

```
lsb_release -a
```

### check last system boot:

```
who -b
last reboot | head -1
uptime  # how long sysm is running
```

### ubuntu version

```
lsb_release -rs # Get current Ubuntu vesion

```

## Operation Command

### User activity

```
w
```

### preview file

```
head filename.csv -n 10
tail /path/to/file
cat xxxfile
tac xxxfile
nl xxxfile
```

### view structure

```
ls -lrt
pwd # print working directory
ls | grep <keyword>
```

### file search

```
locate file1 dir1
locate "*.html" | less
```

### file size

```
du -ah
du -sh
df -h # disk usage
free -m # RAM usage
```

### line number

```
wc -l <filename>
```

### file search:

```
find -iname "<whole file name>"
```

### file operation:

```
mkdir /path/to/create
touch filename.js
mv -t DESTINATION file1 file2 file3
cp -avr dir1/file dir2/
cp fold1 folder2 -R
rm -rf mydir
rm -R *0201\.csv
sed -n '10p' file.txt  # preview 10th line

gzip file ## compression
gzip -d file ## Decompress
```

### process operation:

```sh
ps -ef | grep nohup
ps aux | grep apt
lsof -i:{port#}
kill #id
kill -9 processnumber
pkill <KEYWORD: gunicorn>

top
```

### mount drive:

```
sudo mount /dev/{location} /{mount_point}
sudo umount {mount_point}
```

### sequence operation:

```sh
echo 123 > output.txt
cat sth > python sth.py
```

### file transfer:

```
$ scp ~/local/file user@remote:~/file
```

### service setup:

```
sudo ln -s /opt/utorrent-server-v3_0/utserver /usr/bin/utserver
```

### Environment Var

```
env
echo $PATH
```

### Execution result: error = 0/1

```
echo $?
```

## UFW Firewall Setup:

[ufw setup quickstart](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-with-ufw-on-ubuntu-16-04 "Digital Occean")

```sh
sudo apt-get update
sudo apt-get install ufw
sha256sum <file> # checksum for downloads
md5sum <file>

sudo ufw status / sudo ufw status numbered / sudo ufw status verbose
sudo ufw disable
sudo ufw enable
sudo ufw reset

sudo ufw app list
sudo ufw allow 'Nginx HTTP'
sudo ufw status
sudo ufw allow 21/tcp
sudo ufw allow ssh
sudo ufw allow 22
sudo ufw allow from 15.15.15.51
sudo ufw allow 1000:2000/udp
sudo ufw allow 6000:6007/tcp

sudo ufw deny 20/tcp
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw delete allow ssh / sudo ufw delete [number]
```

CentOS firewall

```
# 安装防火墙
yum install firewalld
# 启动防火墙
systemctl start firewalld
# 端口号是你自己设置的端口
firewall-cmd --permanent --zone=public --add-port=443/tcp
firewall-cmd --reload
```

## port information

```
netstat -tlnp
```

## Utility

### Calculator

```
bc
quit
```

## telnet

## netstat

### Comparison

```
cmp file1 file2
```
