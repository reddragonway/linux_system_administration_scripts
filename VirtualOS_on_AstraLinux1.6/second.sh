#!/bin/bash
usermod -a -G vboxusers user
mv /etc/udev/rules.d/60-vboxdrv.rules /etc/udev/rules.d/60-vboxdrv.rules.original
cp /home/user/AstraLinux_1.6/60-vboxdrv.rules /etc/udev/rules.d/60-vboxdrv.rules
mv /etc/X11/fly-dm/fly-dmrc /etc/X11/fly-dm/fly-dmrc.original
cp /home/user/AstraLinux_1.6/fly-dmrc /etc/X11/fly-dm/fly-dmrc
reboot now
