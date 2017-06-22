#!/bin/bash

property_file="./docker/docker.properties"

if [ -f "$property_file" ]
then

  while IFS='=' read -r key value
  do
    key=$(echo $key | tr '.' '_')
    eval "${key}='${value}'"

  done < "$property_file"

else
  echo "$property_file not found!"
fi

echo "Building docker image ${user}/${image_name}"
docker build -f docker/Dockerfile -t ${user}/${image_name} .
echo "Generated docker image: " ${user}/${image_name}