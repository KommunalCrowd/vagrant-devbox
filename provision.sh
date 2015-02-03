#!/bin/bash

echo "---------------------------------------"
echo "====== Starting the provisioning ======"
echo "---------------------------------------"

# build docker container
docker build -t kommunalcrowd/node-dev:0.1 /srv/docker/nodejs

# run docker container
docker run -d -t -p 3000:3000 -v /srv/source:/src --name="nodejs-dev" kommunalcrowd/node-dev:0.1

alias nodessh="alias docker exec -i -t nodejs-dev bash"

echo "Type 'nodessh' in CoreOS to SSH into container"
