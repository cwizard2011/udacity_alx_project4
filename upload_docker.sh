#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=cwizard/devop-ml-prediction
 echo "dockerpath=cwizard/devop-ml-prediction" >> ~/.bashrc
 source  ~/.bashrc
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push cwizard/devop-ml-prediction