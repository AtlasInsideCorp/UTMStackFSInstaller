#!/bin/sh

source .env
export HOSTNAME BD_PASS
docker swarm init --advertise-addr 127.0.0.1
docker stack deploy --compose-file ./container/docker-fs.yml utm-federation-service
