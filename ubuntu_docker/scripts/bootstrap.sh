#!/bin/bash

# update packages
apt-get update
apt-get upgrade

#install git
apt-get -y install git

#install tree
apt-get -y install tree

# install docker client
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
DOCKER_REPO_FILE_PATH="/etc/apt/sources.list.d/docker.list"
touch $DOCKER_REPO_FILE_PATH
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > $DOCKER_REPO_FILE_PATH
apt-get update
apt-get purge lxc-docker* docker.io*
apt-get -y install docker-engine

# configure docker server
update-rc.d docker defaults
service docker restart

# create workspace folder
cd /home/vagrant/
mkdir workspace
cd workspace

# clone a docker sample application to workspace
git clone https://github.com/spkane/docker-node-hello.git