#!/bin/sh
set -e
sudo docker login -u client -p 4xYkVIAH8kdAH7mP/9BBhbb2ByzLGm4F utmstack.azurecr.io


docker pull utmstack.azurecr.io/utmstack_federation_service_backend:10.0.0
docker pull utmstack.azurecr.io/utmstack_federation_service_frontend:10.0.0
docker pull utmstack.azurecr.io/utmstack_federation_service_postgres:10.0.0
docker pull containrrr/watchtower:latest
