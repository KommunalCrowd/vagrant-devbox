#!/bin/bash

echo "----------------------------------------\n"
echo "====== Starting the provisioning ======\n"
echo "----------------------------------------\n"

# build docker container
docker build -t kommunalcrowd/node-dev:0.1 /srv/docker/nodejs

# run docker container
docker run -i -t --rm -p 3000:3000 -v /srv/source:/src kommunalcrowd/node-dev:0.1
