#!/bin/bash
sudo docker swarm init

sudo docker stack deploy --compose-file ./stacks/Stackfile-hello.yml hellov2