#!/bin/bash

docker kill $(docker ps -aq)
docker rm $(docker ps -aq --filter name=monk-nginx)
# docker system prune -a -f
docker build -t monk-nginx .
docker run --name monk-nginx -d -p 8080:80 monk-nginx