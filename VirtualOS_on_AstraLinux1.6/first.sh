#!/bin/bash
# добавляем сервер локального репозитория
mv /etc/apt/sources.list /etc/apt/sources.list.original
cp /home/user/AstraLinux_1.6/sources.list /etc/apt/sources.list
# апдейтим систему
apt update -y
apt dist-upgrade -y
apt -f install -y
apt autoremove -y
# устанавливаем софт (ssh можно убрать, если не нужно)
apt install gcc make perl linux-headers-generic linux-headers-hardened ca-certificates ssh -y
apt -f install -y
apt autoremove -y
# устанавливаем VirtualBox
apt -y install /home/user/AstraLinux_1.6/*.deb && sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-6.1.16.vbox-extpack <<< y 
# создаем пользователя ansible (можно отключить, если не нужно)
useradd -m -G astra-admin -s /bin/bash ansible
echo -e 'password\npassword\n' | passwd ansible 
echo "ansible ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/ansible
reboot now
