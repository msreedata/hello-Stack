sudo yum -y install git
wget -qO- https://get.docker.com/ | sh

sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker

sudo docker swarm join --token SWMTKN-1-4hy9yfngk65hyi9vf5gxttw18idp1vj6ip7mfg3j4oqoxmcl2b-802tw7jup6gx68nxbczxptm0m 10.1.1.16:2377