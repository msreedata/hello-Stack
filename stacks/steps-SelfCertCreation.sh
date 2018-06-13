#linBox CN
openssl req -newkey rsa:4096 -nodes -sha256 -keyout ~/keys/linBox.key -x509 -days 365 -out ~/keys/linBox.crt -subj "/C=CH/ST=Vaud/L=Lausanne/O=SMLabs/OU=Org/CN=linBox.com"
#upload the files to azure #registy.smlabs.com
scp ~/keys/linBox.crt ~/keys/linBox.key LinuxAdmin@smlin.westeurope.cloudapp.azure.com:

ssh -i ~/.ssh/msreedata_rsa LinuxAdmin@smlin.westeurope.cloudapp.azure.com
#on azure entry machine
mkdrir -p keys
mv linBox.* keys/
sudo mkdir -p /etc/docker/certs.d/linBox
sudo mv ~/keys/linBox.crt /etc/docker/certs.d/linBox:5000/ca.crt


#sudo sh -c "echo ' 192.168.99.100 myregistry.com' >> /etc/hosts"

#start registry service
sudo docker service create --name smregistry --publish=5000:5000 \
 --constraint=node.role==manager \
 --mount=type=bind,src=/home/LinuxAdmin/keys,dst=/certs \
 -e REGISTRY_HTTP_ADDR=0.0.0.0:5000 \
 -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/linBox.crt \
 -e REGISTRY_HTTP_TLS_KEY=/certs/linBox.key \
 registry:latest


docker tag alpine localhost:5000/alpine