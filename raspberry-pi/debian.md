# Raspberry Pi OS primary

## Basic

```sh
sudo shutdown -h now
sudo reboot -h now
```

## first to upgrade to latest

[ref](https://www.raspberrypi.org/documentation/raspbian/updating.md)

```sh
sudo apt update
sudo apt full-upgrade
```

## security

### admin password

```sh
passwd
```

### ssh without text password

[ref](https://www.raspberrypi.org/documentation/configuration/security.md)

## network

```sh
ifconfig wlan0 down
ifconfig wlan0 up
```
