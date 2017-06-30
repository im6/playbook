
# 1. Execute flow
```
command & means "run command in the background."   
command1 && command2 means "run command1 and if it completes successfully, run command2 afterwards."   
command1 | command2cat:  file.csv | python xxxx.py   pipeline stuff, for line in sys.stdin:  
```
# 2. Download & Installation
## apt-get command 
```
sudo apt-get upgrade: actually install all the update
sudo apt-get update: update list of available pkgs
sudo apt-get --purge remove node
sudo apt-get install python-software-properties
sudo apt-get install nodejs
```
## download & get:
```
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
curl -X GET --header 'header1:value1' --header 'header2:value2' 'http://<target endopint>' # endpoint testing
wget google.com -O foo.html
sudo wget -o '/Downloads' 'https://nodejs.org/dist/v6.10.3/node-v6.10.3-linux-x64.tar.xz'
```

## compression & uncomp:
```
tar -czvf name-of-archive.tar.gz /path/to/directory-or-file
tar -zxvf Python-2.7.12.tgz
```

# 3. System Info
## Kernal info:
```
uname -a
uname -v
uname -r
```
## check ip address:
```
dig +short myip.opendns.com @resolver1.opendns.com
ip addr
```
## check ubuntu version: 
```
lsb_release -a
```
## check last system boot:   
```
who -b   
last reboot | head -1
```
# 4. Operation Command
## preview file
```
head filename.csv -n 10
tail /path/to/file
```
## view structure
```
ls -lrt 
pwd 

```
## file size
```
du -ah
du -sh 
df -h
```
## file search:
```
find -iname "<whole file name>"
```

## file operation:
```
mkdir /path/to/create
touch filename.js
mv -t DESTINATION file1 file2 file3
cp -avr dir1/file dir2/
cp fold1 folder2 -R
rm -rf mydir
rm -R *0201\.csv
```

## process operation:
```
ps -ef | grep nohup
ps aux | grep apt
lsof -i:{port#} 
kill #id
kill -9 processnumber
```

## mount drive:
```
sudo mount /dev/{location} /{mount_point}
sudo umount {mount_point}
```

## sequence operation:
```
echo 123 > output.txt
cat sth > python sth.py
```

## file transfer:
```
$ scp ~/local/file user@remote:~/file
```

## service setup:
```
sudo ln -s /opt/utorrent-server-v3_0/utserver /usr/bin/utserver
```

# 5. UFW Firewall Setup:
[ufw setup quickstart](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-with-ufw-on-ubuntu-16-04 "Digital Occean")
```
sudo apt-get install ufw
sudo ufw status / sudo ufw status numbered / sudo ufw status verbose
sudo ufw disable
sudo ufw enable
sudo ufw reset

sudo ufw allow 21/tcp
sudo ufw allow ssh
sudo ufw allow 22
sudo ufw allow from 15.15.15.51
sudo ufw allow 1000:2000/udp
sudo ufw allow 6000:6007/tcp
sudo ufw allow 6000:6007/udp

sudo ufw deny 20/tcp
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw delete allow ssh / sudo ufw delete [number]
```

