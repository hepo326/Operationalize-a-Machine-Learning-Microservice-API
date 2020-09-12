#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=mohebbadawy/boston-housing

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment boston-housing --image=$dockerpath


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/boston-housing 8000:80
