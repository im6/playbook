## utorrent installation in ubuntu
```sh
cd ~/Downloads/
sudo tar -xvzf utserver.tar.gz -C /opt/
sudo chmod -R 755 /opt/utorrent-server-alpha-v3_3/
sudo ln -s /opt/utorrent-server-alpha-v3_3/utserver /usr/bin/utserver
utserver -settingspath /opt/utorrent-server-alpha-v3_3/
```
localhost:8080/gui  
username: admin, password empty
