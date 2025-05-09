#!/usr/bin/env zsh

docker compose down --remove-orphans
docker compose --env-file .env.local up -d server
docker ps
echo "Success!"