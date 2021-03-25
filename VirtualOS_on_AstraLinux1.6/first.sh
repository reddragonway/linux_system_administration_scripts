#!/bin/bash
mv /etc/apt/sources.list /etc/apt/sources.list.original
cp /home/user/AstraLinux_1.6/sources.list /etc/apt/sources.list
apt update -y
apt dist-upgrade -y
apt -f install 
apt autoremove -y
apt install gcc make perl linux-headers-generic linux-headers-hardened ca-certificates ssh -y
apt -y install /home/user/AstraLinux_1.6/*.deb && sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-6.1.16.vbox-extpack <<< y 
useradd -m -G astra-admin -s /bin/bash ansible
echo -e 'password\npassword\n' | passwd ansible 
echo "ansible ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/ansible
reboot now
