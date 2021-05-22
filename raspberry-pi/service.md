# linux service

## file location

```sh
/etc/systemd/system # for manual service
/lib/systemd/system # for package manager or distributor
```

## .service file

```sh
[Unit]
Description=xxx
After=network.target

[Service]
Restart=on-failure
WorkingDirectory=/home/pi/code/xxx/
ExecStart=/usr/bin/yarn run-prod

[Install]
WantedBy=multi-user.target
```

## cli

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
