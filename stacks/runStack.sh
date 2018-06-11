#!/bin/bash
sudo docker swarm init

sudo docker stack --compose-file ./stacks/Stackfile-hello.yml