#!/bin/bash

tag=0.1

# build
docker build -t elDekyfin/omv .

#deploy
docker push eldekyfin/omv:$tag