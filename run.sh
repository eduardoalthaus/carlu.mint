sudo add-apt-repository universe && sudo add-apt-repository multiverse && sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" >> /etc/apt/sources.list.d/virtualbox.list' && wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add - && wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add - && sudo apt-get update && sudo apt install samba cups cups-pdf zip remmina remmina-plugin* openssh-server apt-transport-https virtualbox-5.1 virtualbox-qt virtualbox-dkms virtualbox-guest-additions-iso hplip hplip-gui -y && dpkg -s apt-transport-https > /dev/null || bash -c "sudo apt-get update; sudo apt-get install apt-transport-https -y" && echo "deb [arch=amd64] https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skypeforlinux.list && sudo apt-get update && sudo apt-get install skypeforlinux -y
