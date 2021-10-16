# system init

## SSH

- enable SSH

```sh
sudo raspi-config
```

- generate and copy public key

```sh
ssh-keygen
ssh-copy-id <USERNAME>@<IP-ADDRESS>
```

- disable password login

```sh
sudo nano /etc/ssh/sshd_config
```

```txt
PasswordAuthentication no
```

## update system

```sh
sudo apt-get update
sudo apt full-upgrade
sudo apt -y dist-upgrade
```

## apps to start with

```sh

```
