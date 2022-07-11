#!/bin/bash
tag=0.1

# Install dependencies
apt update -y
apt install -y wget
wget  -O - https://get.docker.com/ | bash

# build
docker build -t eldekyfin/omv .

#deploy
docker login -u $DOCKER_USER -p $DOCKER_PASS
docker push eldekyfin/omv:$tag