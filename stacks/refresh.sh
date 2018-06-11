#!/bin/bash

#initialize repo with folders and pull latest from git remote
. ./initRepo.sh

#build latest docker image for testing
echo "Project path :  $projectDir"
. ./stacks/buildImages.sh

#update stack with new image
echo "Project path :  $projectDir"
. ./stacks/runStack.sh

