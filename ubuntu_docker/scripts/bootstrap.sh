#!/bin/bash

# update packages
apt-get update
apt-get upgrade

# install docker client
DOCKER_REPO_FILE_PATH="/etc/apt/sources.list.d/docker.list"
touch $DOCKER_REPO_FILE_PATH
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > $DOCKER_REPO_FILE_PATH
apt-get update
apt-get purge lxc-docker* docker.io*
apt-get install docker-engine

# configure docker server
chkconfig docker on
service docker start