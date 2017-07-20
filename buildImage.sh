#!/bin/bash

#####  APP specific variables  #######
DOCKER_USER=macxxn
IMAGE_NAME=pencilbox
IMAGE_TAG=latest
######################################


echo "Building docker image ${DOCKER_USER}/${IMAGE_NAME}':'${IMAGE_TAG}"
docker build -f docker/Dockerfile -t ${DOCKER_USER}/${IMAGE_NAME}':'${IMAGE_TAG} .
echo "Generated docker image= ${DOCKER_USER}/${IMAGE_NAME} with tag as '${IMAGE_TAG}'"