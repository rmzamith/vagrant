WORKER_SCRIPT=/var/swarm_shared/token.sh

#init swarm
docker swarm init --advertise-addr $1

# prepare worker script, removing first line
docker swarm join-token worker | tee $WORKER_SCRIPT
tail -n +2 $WORKER_SCRIPT | tee $WORKER_SCRIPT

# create lock dir on shared folder
mkdir /var/swarm_shared/install_lock

# call script to handle swarm init
/bin/sh /home/vagrant/workspace/docker_swarm_start.sh &
