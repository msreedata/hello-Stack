#!/bin/bash
pushd $HOME/dockerstore/hello-Stack

#build php
sudo docker build ./hello-Node -t hellonode:v2
sudo docker build ./hello-Php -t hellophp:v2
sudo docker build ./hello-Go -t hellogo:v2

popd 

sudo docker image ls