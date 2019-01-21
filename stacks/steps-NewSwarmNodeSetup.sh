sudo yum -y install git
wget -qO- https://get.docker.com/ | sh

sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker

sudo docker swarm join --token SWMTKN-1-1po4t8ubgbt392lmmuaygghg4fw41oa7x38akwte1rszo6ru1t-20egvk68pk9c6padud12tqtm8 10.1.1.4:2377
