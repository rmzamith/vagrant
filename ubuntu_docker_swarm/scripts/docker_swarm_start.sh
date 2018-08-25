# ATENTION: (REFACTOR) this number after -eq flkag has to be equal to the number of workers. Need to change to better approach
while [ $(ls /var/swarm_shared/install_lock | wc -l) -lt 2 ]
  do
    sleep 1;
  done;

#init service
docker stack deploy -c /home/vagrant/workspace/docker-compose.yml getstartedlab;
# remove installation files
rm -rf /var/swarm_shared/install_lock;
rm /var/swarm_shared/token.sh;