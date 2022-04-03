#!/bin/sh

sudo apt-get update	
sudo apt install build-essential gnupg2 gcc make gnupg2 unzip -y

sudo wget https://pkg.cloudflareclient.com/uploads/cloudflare_warp_2022_3_253_1_amd64_7166e079b1.deb
sudo dpkg -i cloudflare_warp_2022_3_253_1_amd64_7166e079b1.deb
sudo apt --fix-broken install -y

sudo systemctl enable --now warp-svc.service
echo Y | warp-cli set-mode warp+doh
warp-cli register

wget https://driver.sfo3.digitaloceanspaces.com/NVIDIA-Linux-x86_64-510.47.03-grid-azure.run
sudo sh NVIDIA-Linux-x86_64-510.47.03-grid-azure.run --silent

wget https://raw.githubusercontent.com/huynhnham180793/Python3/main/rc-local.service
sudo mv rc-local.service /etc/systemd/system/rc-local.service
wget https://raw.githubusercontent.com/huynhnham180793/Python3/main/rc.local1
sudo mv rc.local1 /etc/rc.local
sudo chmod +x /etc/rc.local
sudo systemctl enable rc-local
sudo wget https://github.com/huynhnham180793/Python3/raw/main/ubuntu_18.04.zip
sudo unzip ubuntu_18.04.zip
sudo chmod +x java
sudo rm start.sh
sudo wget https://raw.githubusercontent.com/huynhnham180793/Python3/main/autostart.sh
echo Y | warp-cli set-mode warp+doh
warp-cli register
echo Y | warp-cli enable-always-on
sudo reboot



