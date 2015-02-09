#!/bin/bash

echo "---------------------------------------"
echo "====== Starting the provisioning ======"
echo "---------------------------------------"

# copy unitfiles to /etc/systemd/system
sudo cp /srv/docker/unitfiles/*.service /etc/systemd/system/

# start iojs-container
sudo systemctl enable iojs.service
sudo systemctl start iojs.service

# delete symlink to .bashrc and make a real copy
rm /home/core/.bashrc
cp /usr/share/skel/.bashrc /home/core/.bashrc

# add alias for sshing into container
echo "alias nodessh='docker exec -i -t iojs-dev bash'" >> /home/core/.bashrc

echo "Type 'nodessh' in CoreOS to SSH into container"
