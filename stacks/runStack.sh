#!/bin/bash
stackName=hellov2
if [[ $projectDir && -d $projectDir ]];then
sudo docker swarm init
sudo docker stack rm $stackName


declare -i limit=60
until [ -z "$(sudo docker service ls --filter label=com.docker.stack.namespace=$stackName -q)" ] || [ "$limit" -le 0 ]; do
  sleep 1;
  ((limit--))
  echo "wait for clearing service... ${limit}"
done

limit=60
until [ -z "$(sudo docker network ls --filter label=com.docker.stack.namespace=$stackName -q)" ] || [ "$limit" -lt 0 ]; do
  sleep 1;
  ((limit--))
  echo "wait for clearing network... ${limit}"
done

sudo docker stack deploy --compose-file $projectDir/stacks/Stackfile-hello.yml $stackName

#view stack details
sudo docker stack ls
sudo docker service ls
sudo docker container ps

else
    echo "...skipping Run Stack."
fi
