#!/bin/bash
stackName=hellov2
if [[ $projectDir && -d $projectDir ]];then
sudo docker swarm init
sudo docker stack rm $stackName

until [ -z "$(sudo docker service ls --filter label=com.docker.stack.namespace=$stackName -q)" ] || [ "$limit" -lt 0 ]; do
  sleep 1;
done

until [ -z "$(sudo docker network ls --filter label=com.docker.stack.namespace=$stackName -q)" ] || [ "$limit" -lt 0 ]; do
  sleep 1;
done

sudo docker stack deploy --compose-file $projectDir/stacks/Stackfile-hello.yml $stackName

#view stack details
sudo docker stack ls
sudo docker service ls
sudo docker container ps

else
    echo "...skipping Run Stack."
fi
