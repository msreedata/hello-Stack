#!/bin/bash

#initialize repo with folders and pull latest from git remote
#This will be already done by CI #. ./stacks/initRepo.sh
projectDir=$(pwd)

#build latest docker image for testing
echo "Project path :  $projectDir"
. ./buildImages.sh

#update stack with new image
echo "Project path :  $projectDir"
. ./runStack.sh

