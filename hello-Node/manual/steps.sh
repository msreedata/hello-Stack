#!/bin/bash
:' Run below lines manually first -- this will build the docker image from dockerFile and start the container

cd $HOME
mkdir -p dockerstore
cd dockerstore/
git clone https://github.com/msreedata/hello-Node.git
cd $HOME/dockerstore/hello-Node

'

cd $HOME/dockerstore/hello-Node
sudo yum -y install docker
ls
read -rsp $'Press any key to continue...\n' -n1 key

systemctl status docker
systemctl start docker
systemctl status docker
systemctl enable docker
systemctl status docker
read -rsp $'Press any key to continue...\n' -n1 key


cd $HOME/dockerstore/hello-Node
git pull

sudo docker build . -t hellonode:v2
sudo docker image ls
read -rsp $'Press any key to continue...\n' -n1 key

sudo docker run --rm -d -p 80:80 --name hnode2 hellonode:v2
sudo docker ps -a
#
