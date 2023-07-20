#!/bin/sh
brew install minikube || true
brew install helm || true
brew install kubectl || true
brew install tilt-dev/tap/tilt || true
brew install skaffold || true
brew install garden-io/garden/garden-cli || true
brew install localstack/tap/localstack-cli || true
helm repo add bitnami https://charts.bitnami.com/bitnami || true
helm repo add traefik https://traefik.github.io/charts || true