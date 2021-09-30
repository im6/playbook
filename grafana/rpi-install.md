# install on raspberry pi

[ref](https://pimylifeup.com/raspberry-pi-prometheus/)

- download `armv7` version

- install

```sh
tar xvfz prometheus-*.tar.gz
cd prometheus-*
```

- start

```sh
./prometheus --config.file=prometheus.yml
```

- create as a service

```sh
sudo nano /etc/systemd/system/prometheus.service
```

```txt
[Unit]
Description=Prometheus Server
Documentation=https://prometheus.io/docs/introduction/overview/
After=network-online.target

[Service]
User=pi
Restart=on-failure

ExecStart=/home/pi/prometheus/prometheus \
  --config.file=/home/pi/prometheus/prometheus.yml \
  --storage.tsdb.path=/home/pi/prometheus/data

[Install]
WantedBy=multi-user.target
```

```sh
sudo systemctl enable prometheus.service
sudo systemctl start prometheus.service
```
