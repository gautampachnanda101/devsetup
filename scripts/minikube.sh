#!/bin/sh
minikube stop --all && minikube delete --purge --all || true
minikube start --kubernetes-version=1.27.0 -p devlocal || true
minikube addons enable ingress -p devlocal || true
minikube addons enable metrics-server -p devlocal || true
minikube addons enable dashboard -p devlocal || true
minikube addons enable ingress-dns -p devlocal || true
minikube dashboard -p devlocal & || true
minikube dashboard --url -p devlocal & || true
skaffold config set --global local-cluster true
eval $(minikube -p devlocal docker-env)