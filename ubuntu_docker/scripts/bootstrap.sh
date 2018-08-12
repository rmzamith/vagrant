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

# create workspace folder
cd /home/vagrant/
mkdir workspace
cd workspace

# clone a docker sample application to workspace
git clone https://github.com/spkane/docker-node-hello.git