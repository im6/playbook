# usb mount

```sh
sudo fdisk -l
sudo mkdir /media/usb
sudo chown -R pi:pi /media/usb
sudo mount -t exfat /dev/sda1 /media/usb/ -o uid=pi,gid=pi
sudo umount /dev/sda1
```
