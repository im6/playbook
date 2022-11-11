# app

## vim

```sh
sudo apt update
sudo apt install vim
```

## git

```sh
sudo apt update
sudo apt install git
```

## qbitorrent

[qbt](https://pimylifeup.com/raspberry-pi-qbittorrent/)
[service user](https://linuxhomeserver.com/applications/install-torrent-client/)

```sh
sudo apt install qbittorrent-nox

qbittorrent-nox # run it
```

### background service

add new user by

```sh
sudo adduser --system qbittorrent-user
```

create `service` file in system

```sh
cd /etc/systemd/system
sudo vim qbittorrent-nox.service
```

```vim
[Unit]
Description=qBittorrent Daemon Service
After=network.target

[Service]
User=qbittorrent-user
UMask=002
ExecStart=/usr/bin/qbittorrent-nox
ExecStop=/usr/bin/killall -w qbittorrent-nox

[Install]
WantedBy=multi-user.target
```

update system

```sh
sudo systemctl daemon-reload
```

start a new service

```sh
sudo systemctl start qbittorrent-nox.service
```

check status

```sh
sudo systemctl status qbittorrent-nox.service
```

optional, starts up automatically when the server is booted up

```sh
sudo systemctl enable qbittorrent-nox.service
```

## pihole

[pihole](https://docs.pi-hole.net/core/pihole-command/)
