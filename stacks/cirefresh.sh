#!/bin/bash

#initialize repo with folders and pull latest from git remote
#This will be already done by CI #. ./stacks/initRepo.sh
projectDir=$(pwd)

#build latest docker image for testing
echo "Project path :  $projectDir"
sudo docker build --no-cache ./hello-Node -t hellonode:v2
sudo docker build --no-cache ./hello-Php -t hellophp:v2
sudo docker build --no-cache ./hello-Go -t hellogo:v2

#update stack with new image
echo "Project path :  $projectDir"
. ./stacks/runStack.sh

