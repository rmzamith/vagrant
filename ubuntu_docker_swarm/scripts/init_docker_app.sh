#cd into workspace
cd /home/vagrant/workspace

#build image
#docker build -t friendlyhello .

#run image
#docker run -d -p 4000:80 friendlyhello

#init swarm
docker swarm init

#init service
docker stack deploy -c docker-compose.yml getstartedlab
