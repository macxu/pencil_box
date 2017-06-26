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

# above code is to get the properties from the property file

echo "running containers:"
docker ps
echo ""

echo "stop and remove existing container"
docker rm -f ${container_name}

echo ""
echo "Run in container: http://localhost:"${host_bind_port}

docker run -p ${host_bind_port}:${container_port} --link ${link_container_name}:${link_container_alias} --name ${container_name} -t ${user}/${image_name}