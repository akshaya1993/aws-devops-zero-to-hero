#!/bin/bash
set -e

# Stop and remove the running container (if any)
echo "Hi"
containerid=$(docker ps -q)

if [ -n "$containerid" ]; then
  echo "Stopping and removing container: $containerid"
  docker rm -f $containerid
else
  echo "No running container found"
fi

