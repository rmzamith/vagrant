WORKER_SCRIPT=/var/swarm_shared/token.sh;
#init swarm
docker swarm init --advertise-addr $1;
# prepare worker script, removing first line
touch $WORKER_SCRIPT;
exec docker swarm join-token manager > $WORKER_SCRIPT;
exec tail -n +2 $WORKER_SCRIPT > $WORKER_SCRIPT;
# create lock dir on shared folder
mkdir /var/swarm_shared/install_lock;
# call script to handle swarm init
/bin/sh /home/vagrant/workspace/docker_swarm_start.sh &
