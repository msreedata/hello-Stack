#!/bin/bash
basedir=$HOME/dockerstore
gitproject=hello-Stack
gitrepourl=https://github.com/msreedata/${gitproject}.git
projectDir="$basedir/$gitproject"

mkdir -p $basedir
if [ ! -d $projectDir ]; then
        echo "missing project dir, clone now...$projectDir"
        git clone $gitrepourl $projectDir
fi

pushd $projectDir
git pull
popd
