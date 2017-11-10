Provisioning Ubuntu Desktop 17.04
=========================

How To Install With One Command
-------------------------------
```bash
wget -qO- https://raw.githubusercontent.com/ermolaev/ansible-ubuntu-desktop/master/run.sh | bash
```

Начать выполнение с определенной задачи - `--start-at-task`

```bash
ansible-playbook setup.yml -i HOSTS --ask-sudo-pass --module-path ./ansible_modules --start-at-task="Run teamviewer winecfg"
```


Fix problem for programs written on electron for 4k displays
-------------------------------
https://github.com/atom/atom/issues/10518

`Exec=/opt/atom/atom --ignore-gpu-blacklist --disable-gpu-sandbox %F`

```
sudo vim /usr/share/applications/atom.desktop
sudo vim /usr/share/applications/gitkraken.desktop
sudo vims ~/.local/share/applications/jetbrains-rubymine.desktop
```


`export QT_DEVICE_PIXEL_RATIO=1.5` # vim ~/.profile

`WINEPREFIX="$HOME/.navicat64" winecfg`


# TODO Navicat

http://askubuntu.com/questions/748626/create-launcher-icon-for-navicat

sudo apt-get install lib32ncurses5 lib32z1

## TODO rubymine theme configuration

## spotify
https://www.spotify.com/us/download/linux/

https://community.spotify.com/t5/Desktop-Linux-Windows-Web-Player/Linux-client-barely-usable-on-HiDPI-displays/m-p/1216088/highlight/true#M141051

`sudo vim /usr/share/applications/spotify.desktop`
`Exec=spotify %U --force-device-scale-factor=2`

## TODO atom configuration

## kworker cpu problem (after BIOS update)
`grep enabled /sys/firmware/acpi/interrupts/gpe*`

`sudo micro /etc/rc.local`
```bash
#!/bin/sh -e
echo "disable" > /sys/firmware/acpi/interrupts/gpe61
exit 0
```
`sudo chmod 755 /etc/rc.local`



https://github.com/gnunn1/tilix/wiki/Quake-Mode
https://repo.herecura.eu/herecura/x86_64/ opera-ffmpeg-codecs -> opera root
https://github.com/horst3180/arc-icon-theme

## Other

rvm ruby `Command` `Run command as a login shell`


http://compizomania.blogspot.com/2017/04/skype-beta-ubuntu-budgie-1704.html


https://github.com/winterheart/broadcom-bt-firmware/blob/master/brcm/BCM20703A1-0a5c-6410.hcd `sudo mv ~/Downloads/BCM20703A1-0a5c-6410.hcd /lib/firmware/brcm/BCM-0a5c-6410.hcd`
