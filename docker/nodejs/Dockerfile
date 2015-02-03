FROM centos:centos6
MAINTAINER "Marian Sievers"
# replace this with your application's default port
EXPOSE 1337

# Enable EPEL for Node.js
RUN     rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
# Install Node.js and npm
RUN     yum install -y npm

# install sails globally
RUN     npm -g install sails

# go to /src
WORKDIR  /src

CMD ["/bin/bash"]
