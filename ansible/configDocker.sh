#!/bin/bash
sudo docker version
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker

sudo docker swarm join --token SWMTKN-1-0qhdyc05d8mk65fvi3t8pip83x4d8701ungby5dsga8rcbhyiu-33ngxetsyum747aab11mwokfw 10.1.1.4:2377
#echo "asdfasdf"
#echo "asdfasdfdeeeeeeee"