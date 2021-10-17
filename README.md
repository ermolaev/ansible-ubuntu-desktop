# Provisioning Ubuntu Desktop 21.10


```bash
sudo apt install ansible
git clone https://github.com/ermolaev/ansible-ubuntu-desktop.git ~/ansible-ubuntu-desktop
sudo ansible-galaxy install -r requirements.yml
sudo ansible-playbook setup.yml
sudo ansible-playbook setup.yml --start-at-task="Run task name"
```

```bash
sudo vim /usr/share/applications/atom.desktop
sudo vim /usr/share/applications/gitkraken.desktop
sudo vims ~/.local/share/applications/jetbrains-rubymine.desktop
```

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


https://github.com/winterheart/broadcom-bt-firmware/blob/master/brcm/BCM20703A1-0a5c-6410.hcd `sudo mv ~/Downloads/BCM20703A1-0a5c-6410.hcd /lib/firmware/brcm/BCM-0a5c-6410.hcd`

## Gnome
https://extensions.gnome.org/extension/570/todotxt/
https://extensions.gnome.org/extension/750/openweather/
https://extensions.gnome.org/extension/1732/gtk-title-bar/
https://extensions.gnome.org/extension/779/clipboard-indicator/
https://extensions.gnome.org/extension/1262/bing-wallpaper-changer/
https://extensions.gnome.org/extension/1319/gsconnect/
https://extensions.gnome.org/extension/120/system-monitor/
