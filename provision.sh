#!/bin/bash

echo "---------------------------------------"
echo "====== Starting the provisioning ======"
echo "---------------------------------------"

# run docker container
docker run -d -t -p 1337:1337 -v /srv/source:/src --name="iojs-dev" kommunalcrowd/iojs-dev:0.2

# delete symlink to .bashrc and make a real copy
rm /home/core/.bashrc
cp /usr/share/skel/.bashrc /home/core/.bashrc

# add alias for sshing into container
echo "alias nodessh='docker exec -i -t iojs-dev bash'" >> /home/core/.bashrc

echo "Type 'nodessh' in CoreOS to SSH into container"
