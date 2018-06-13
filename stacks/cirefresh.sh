#!/bin/bash

#initialize repo with folders and pull latest from git remote
#This will be already done by CI #. ./stacks/initRepo.sh
projectDir=$(pwd)

#install trusted certificate
sudo cp ./stacks/linBox.crt /etc/docker/certs.d/linBox:5000/ca.crt

#build latest docker image for testing
echo "Project path :  $projectDir"
sudo docker build --no-cache ./hello-Node -t linBox:5000/hellonode:v2
sudo docker build --no-cache ./hello-Php -t linBox:5000/hellophp:v2
sudo docker build --no-cache ./hello-Go -t linBox:5000/hellogo:v2

#update stack with new image
echo "Project path :  $projectDir"
. ./stacks/runStack.sh

