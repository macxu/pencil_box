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

echo "Publishing image to Docker Hub: "${user}/${image_name}

echo "login wih user:" ${user}
docker login -u ${user}

docker push ${user}/${image_name}