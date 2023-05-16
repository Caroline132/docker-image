#!/bin/bash

# install cert-manager CustomResourceDEfinition resources
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.11.2/cert-manager.crds.yaml

# Add Jetstack Helm repository
helm repo add jetstack https://charts.jetstack.io

# Install the cert-manager helm charts
helm install my-release --namespace cert-manager --version v1.11.2 jetstack/cert-manager

# Upgrade the chart value
helm upgrade my-release jetstack/cert-manager --set prometheus.enabled=false -n cert-manager
