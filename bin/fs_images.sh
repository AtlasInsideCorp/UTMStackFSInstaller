#!/bin/sh
set -e
sudo docker login -u client -p 4xYkVIAH8kdAH7mP/9BBhbb2ByzLGm4F utmstack.azurecr.io


docker pull utmstack.azurecr.io/utmstack_federation_service_backend:v9
docker pull utmstack.azurecr.io/utmstack_federation_service_frontend:v9
docker pull utmstack.azurecr.io/postgres:v9
docker pull containrrr/watchtower:latest
