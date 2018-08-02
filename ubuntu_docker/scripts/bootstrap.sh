#!/bin/bash

# update packages
apt-get update
apt-get upgrade

#install git
apt-get -y install git

#install tree
apt-get -y install tree

# install virtual box
apt-get -y install virtualbox 

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

# install docker machine
base=https://github.com/docker/machine/releases/download/v0.14.0
curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine
sudo install /tmp/docker-machine /usr/local/bin/docker-machine

# create workspace folder
cd /home/vagrant/
mkdir workspace
cd workspace

# clone a docker sample application to workspace
git clone https://github.com/spkane/docker-node-hello.git

# create docker swarm VMs on VirtualBox
docker-machine create --driver virtualbox myvm1
docker-machine create --driver virtualbox myvm2
docker-machine create --driver virtualbox myvm3
docker-machine create --driver virtualbox myvm4
docker-machine create --driver virtualbox myvm5