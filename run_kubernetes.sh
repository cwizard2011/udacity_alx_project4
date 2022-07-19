#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=cwizard/devop-ml-prediction

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy devop-ml-prediction  --image=cwizard/devop-ml-prediction

# Step 3:
# List kubernetes pods
kubectl get pods 
# Step 4:
# Forward the container port to a host
kubectl port-forward pod/devop-ml-prediction-9659fd557-g4jtc --address 0.0.0.0 8000:80