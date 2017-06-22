#!/bin/bash

echo "Building docker image macxxn/pencil-box"
docker build -f docker/Dockerfile -t macxxn/pencil-box .