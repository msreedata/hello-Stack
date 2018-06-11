#!/bin/bash

#initialize repo with folders
. ./initRepo.sh

#
echo "Project path :  $projectDir"
pushd $projectDir
. ./stacks/buildimage.sh
popd