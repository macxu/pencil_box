#!/bin/bash  

sh ./buildImage.sh

docker-compose -f ./docker/docker-compose.yml up