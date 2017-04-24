https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-with-ufw-on-ubuntu-16-04

```
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh

sudo ufw allow 22
sudo ufw enable


sudo ufw allow 6000:6007/tcp
sudo ufw allow 6000:6007/udp

sudo ufw allow from 15.15.15.51

ip addr
```
