#!/bin/bash
#add sudo launch without password
#sudo visudo # 
echo 'linuxadmin ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
sudo yum -y install java
sudo yum -y install git
sudo wget -qO- https://get.docker.com/ | sh
sudo docker version
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker
