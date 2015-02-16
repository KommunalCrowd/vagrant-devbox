#!/bin/bash

echo "---------------------------------------"
echo "====== Starting the provisioning ======"
echo "---------------------------------------"

# update yum-repo
yum -y update && yum clean all
yum -y install epel-release && yum clean all

yum -y install curl git

# install docker
yum -y install docker && yum clean all
sudo systemctl start docker

# install docker-compose
curl -L https://github.com/docker/fig/releases/download/1.1.0-rc2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose; chmod +x /usr/local/bin/docker-compose
