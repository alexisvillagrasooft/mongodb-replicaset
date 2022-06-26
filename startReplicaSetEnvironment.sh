#!/bin/bash

DELAY=10

sudo docker-compose --file docker-compose-replicaset.yml down
sudo docker rm -f $(sudo docker ps -a -q)
sudo docker volume rm $(sudo docker volume ls -q)

sudo docker-compose --file docker-compose-replicaset.yml up -d

echo "****** Waiting for ${DELAY} seconds for containers to go up ******"
sleep $DELAY

sudo docker exec mongo1 ./scripts/rs-init.sh
