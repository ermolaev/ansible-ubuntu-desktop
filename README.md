Provisioning Ubuntu Desktop 16.04
=========================

How To Install With One Command
-------------------------------
```bash
wget -qO- https://raw.githubusercontent.com/ermolaev/ansible-ubuntu-desktop/master/run.sh | sudo bash
```

Копируем каталог с удаленной машины
-------------------------------
`rsync -avzr ermolaev@192.168.0.103:/home/ermolaev/folder /home/ermolaev/folder`

`export QT_DEVICE_PIXEL_RATIO=1.5` # vim ~/.profile

`WINEPREFIX="$HOME/.navicat64" winecfg`

Fix problem for programs written on electron for 4k displays
-------------------------------
https://github.com/atom/atom/issues/10518

`Exec=/opt/atom/atom --ignore-gpu-blacklist --disable-gpu-sandbox %F`

```
sudo vim /usr/share/applications/atom.desktop
sudo vim /usr/share/applications/gitkraken.desktop
```


# TODO Navicat

http://askubuntu.com/questions/748626/create-launcher-icon-for-navicat

sudo apt-get install lib32ncurses5 lib32z1

# TODO rubymine theme configuration

# TODO spotify
https://www.spotify.com/us/download/linux/
https://community.spotify.com/t5/Desktop-Linux-Windows-Web-Player/Linux-client-barely-usable-on-HiDPI-displays/m-p/1216088/highlight/true#M141051

# TODO atom configuration

# kworker cpu problem (after BIOS update)
`grep enabled /sys/firmware/acpi/interrupts/gpe*`

`sudo micro /etc/rc.local`
```bash
#!/bin/sh -e
echo "disable" > /sys/firmware/acpi/interrupts/gpe61
exit 0
```
`sudo chmod 755 /etc/rc.local`
