#!/bin/sh
git reset --hard
git pull

cp src/whitelist.json data/whitelist.json

docker-compose exec mc rcon-cli whitelist reload
docker-compose exec mc rcon-cli whitelist list