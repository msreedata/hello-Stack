#!/bin/bash
sudo docker swarm init

sudo docker stack deploy --compose-file ./stacks/Stackfile-hello.yml hellov2

#view stack details
sudo docker stack ls
sudo docker service ls
sudo docker container ps
