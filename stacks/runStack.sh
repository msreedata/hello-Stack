#!/bin/bash
stackName=hellov2
if [[ $projectDir && -d $projectDir ]];then
sudo docker swarm init
sudo docker stack rm $stackName
sudo docker stack deploy --compose-file $projectDir/stacks/Stackfile-hello.yml $stackName

#view stack details
sudo docker stack ls
sudo docker service ls
sudo docker container ps

else
    echo "...skipping Run Stack."
fi
