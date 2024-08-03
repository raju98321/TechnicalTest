#!/bin/bash

# Find all Docker containers labeled com.a2odev.app=sigma
containers=$(docker ps --filter "label=com.a2odev.app=sigma" --format "{{.ID}}")

# Loop through each container and apply the memory limit and restart policy
for container in $containers; do
  echo "Updating container: $container"
  
  # Set memory limit to 64MB
  docker update --memory 64m $container
  
  # Set restart policy to "on-failure:5"
  docker update --restart on-failure:5 $container
done

echo "Update completed."
