#!/bin/bash
set -e

# Step 1: Start Minikube
echo "Starting Minikube..."
minikube start

# Step 2: Enable Ingress addon
echo "Enabling ingress..."
minikube addons enable ingress

# Step 3: Load local Docker image into Minikube
echo "Loading Docker image..."
minikube image load wisecow:latest

# Step 4: Apply Kubernetes manifests
echo "Deploying Wisecow..."
kubectl apply -f k8s/deployment.yaml

