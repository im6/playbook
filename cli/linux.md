
command & means "run command in the background."
command1 && command2 means "run command1 and if it completes successfully, run command2 afterwards."
command1 | command2cat:  file.csv | python xxxx.py   pipeline stuff, for line in sys.stdin:
```
ls -lrt 
du -ah
du -sh 
df -h
pwd 
head filename.csv -n 10
cat sth > python sth.py

mv -t DESTINATION file1 file2 file3
cp -avr dir1/file dir2/
cp fold1 folder2 -R
rm -rf mydir
rm -R *0201\.csv

wget google.com -O foo.html
sudo wget -o '/Downloads' 'http://mirror.nexcess.net/apache/spark/spark-1.6.2/spark-1.6.2.tgz'
tar -zxvf Python-2.7.12.tgz

lsof -i:{port#} 
kill #id

ps -ef | grep nohup

dig +short myip.opendns.com @resolver1.opendns.com


echo 123 > output.txt

sudo mount /dev/{location} /{mount_point}
sudo umount {mount_point}
find -iname "<whole file name>"


link server to the directory: 
sudo ln -s /opt/utorrent-server-v3_0/utserver /usr/bin/utserver

$ scp ~/local/file user@remote:~/file

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


