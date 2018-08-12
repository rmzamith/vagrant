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
