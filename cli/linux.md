
command & means "run command in the background."   
command1 && command2 means "run command1 and if it completes successfully, run command2 afterwards."   
command1 | command2cat:  file.csv | python xxxx.py   pipeline stuff, for line in sys.stdin:   
# Download & installation
## apt-get command 
```
sudo apt-get --purge remove node
sudo apt-get --purge remove nodejs-legacy
sudo apt-get --purge remove nodejs
sudo apt-get install python-software-properties
sudo apt-get install nodejs
```
## download & get:
```
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
wget google.com -O foo.html
sudo wget -o '/Downloads' 'https://nodejs.org/dist/v6.10.3/node-v6.10.3-linux-x64.tar.xz'
```

## compression & uncomp:
```
tar -czvf name-of-archive.tar.gz /path/to/directory-or-file
tar -zxvf Python-2.7.12.tgz
```

# system info
## Kernal info:
```
uname -a
uname -v
uname -r
```
## check ip address:
```
dig +short myip.opendns.com @resolver1.opendns.com
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
# operation command
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
lsof -i:{port#} 
kill #id
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

# ufw firewall setup:
```
sudo apt-get install ufw
sudo ufw status / sudo ufw status numbered / sudo ufw status verbose
sudo ufw allow 21/tcp
sudo ufw deny 20/tcp
sudo ufw disable
sudo ufw enable
sudo ufw reset
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 1000:2000/udp
sudo ufw delete allow ssh / sudo ufw delete [number]
```

