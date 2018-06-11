#!/bin/bash

#initialize repo with folders
. ./initRepo.sh

#
echo "Project path :  $projectDir"
pushd $projectDir
. ./stacks/buildImages.sh
popd