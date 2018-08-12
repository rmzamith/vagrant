# configure swarm worker
/bin/sh /var/swarm_shared/token.sh

#notify that finished on shared lock folder
touch /var/swarm_shared/install_lock/$1

