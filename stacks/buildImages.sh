#!/bin/bash
cd $HOME
mkdir -p dockerstore
cd dockerstore/
git clone https://github.com/msreedata/hello-Stack.git
cd $HOME/dockerstore/hello-Stack

#build php
sudo docker build ./hello-Node -t hellonode:v2
sudo docker build ./hello-Php -t hellophp:v2
sudo docker build ./hello-Go -t hellogo:v2

sudo docker image ls