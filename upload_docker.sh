#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=thomson3192/udacity-project

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag udacity-project:latest thomson3192/udacity-project:latest

# Step 3:
# Push image to a docker repository
docker push thomson3192/udacity-project:latest