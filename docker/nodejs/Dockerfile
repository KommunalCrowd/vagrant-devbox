FROM        centos:centos6
MAINTAINER  "Marian Sievers"

EXPOSE      1337

# Install software
RUN         yum install -y tar gzip wget clang clang++ python

# Install io.js
RUN         mkdir /root/iojs
RUN         wget https://iojs.org/dist/v1.1.0/iojs-v1.1.0-linux-x64.tar.gz
RUN         tar -zxvf iojs-v1.1.0-linux-x64.tar.gz -C /root/iojs

# add io.js to path
RUN         echo "PATH=$PATH:/root/iojs/iojs-v1.1.0-linux-x64/bin" >> /root/.bashrc

# install sails globally
RUN         source /root/.bashrc
RUN         /root/iojs/iojs-v1.1.0-linux-x64/bin/npm -g install sails

# go to /src
WORKDIR     /src

CMD         ["/bin/bash"]
