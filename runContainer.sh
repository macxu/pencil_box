#!/bin/bash  

echo "running containers:"
docker ps
echo ""

echo "stop and remove existing container"
docker rm -f pencil-box

echo ""
echo "Run node-frontend in container: http://localhost:8088"

docker run -t -p 8088:8088 --link pencil-box-api:BACKEND -d --name pencil-box macxxn/pencil-box