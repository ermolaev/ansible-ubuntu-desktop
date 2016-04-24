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


`WINEPREFIX="$HOME/.navicat64" winecfg`