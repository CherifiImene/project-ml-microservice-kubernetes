#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=imenecherifi/pricespredictions
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run pricespredictions --image=$dockerpath --port=8000

# Step 3:
# List kubernetes pods
kubectl get pod
# Step 4:
# Forward the container port to a host
kubectl port-forward pricespredictions 8000:80
