#!/bin/bash
if [[ $projectDir && -d $projectDir ]];then
    pushd $projectDir #$HOME/dockerstore/hello-Stack

    #build php
    sudo docker build --no-cache ./hello-Node -t hellonode:v2
    sudo docker build --no-cache ./hello-Php -t hellophp:v2
    sudo docker build --no-cache ./hello-Go -t hellogo:v2

    popd 

    sudo docker image ls
else
    echo "...skipping Build Image."
fi