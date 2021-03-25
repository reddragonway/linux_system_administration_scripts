#!/bin/bash
# решаем проблему с отсутствием возможности пробрасывать usb-устройства в гостевую ОС
# добавляем пользователя user в группу vboxusers
usermod -a -G vboxusers user
# патчим конфиг
mv /etc/udev/rules.d/60-vboxdrv.rules /etc/udev/rules.d/60-vboxdrv.rules.original
cp /home/user/AstraLinux_1.6/60-vboxdrv.rules /etc/udev/rules.d/60-vboxdrv.rules
# добавляем возможность автоматического входа в систему под пользователем user (в режиме низкой целостности)
mv /etc/X11/fly-dm/fly-dmrc /etc/X11/fly-dm/fly-dmrc.original
cp /home/user/AstraLinux_1.6/fly-dmrc /etc/X11/fly-dm/fly-dmrc
reboot now
