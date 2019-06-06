#!/bin/bash
cd /etc/apt/sources.list.d/
sudo sed -i '4s/^/# /' official-package-repositories.list
cd
sudo echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" >> /etc/apt/sources.list.d/virtualbox.list
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add - 
sudo apt-get update && sudo apt-get install htop samba cups cups-pdf zip remmina remmina-plugin-* openssh-server apt-transport-https hplip hplip-gui -y virtualbox-5.2 -y
dpkg -s apt-transport-https > /dev/null || bash -c "sudo apt-get update; sudo apt-get install apt-transport-https -y"
echo "deb [arch=amd64] https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skypeforlinux.list
sudo apt-get update && sudo apt-get install skypeforlinux -y --force-yes
mv ~/.local/share/keyrings/login.keyring .local/share/keyrings/login.keyring.bkp
wget https://download.virtualbox.org/virtualbox/5.2.26/Oracle_VM_VirtualBox_Extension_Pack-5.2.26.vbox-extpack 
exit
