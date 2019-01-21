9  nano ~/.ssh/authorized_keys
   10  chmod 600 ~/.ssh/authorized_keys
   11  chmod 700 ~/.ssh/
   12  cat ~/.ssh/authorized_keys
   13  exit
   14  ls .ssh/authorized_keys
   15  cat .ssh/authorized_keys
   16  rm .ssh/authorized_keys
   17  cat .ssh/authorized_keys
   18  ls .ssh -hal
   19  systemctl status sshd
   20  systemctl reload sshd
   21  sudo systemctl reload sshd
   22  hostnamectl
   23  sudo yum -i java
   24  sudo yum -y install java
   25  git
   26  sudo yum -y install git
   27  git version
   28  git
   29   wget -qO- https://get.docker.com/ | sh
   30  sudo wget -qO- https://get.docker.com/ | sh
   31  docker version
   32  sudo systemctl enable docker
   33  sudo systemctl start docker
   34  sudo systemctl status docker
   35  
#!/bin/bash
#add sudo launch without password
#sudo visudo # 
#echo 'linuxadmin ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

sudo sh -c "echo '$(whoami) ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers"
sudo yum -y install java
sudo yum -y install git
sudo yum -y install wget
sudo wget -qO- https://get.docker.com/ | sh
sudo usermod -aG docker $(whoami)
sudo docker version
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker
