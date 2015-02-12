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

# install fig
curl -L https://github.com/docker/fig/releases/download/1.0.1/fig-`uname -s`-`uname -m` > /usr/local/bin/fig; chmod +x /usr/local/bin/fig
