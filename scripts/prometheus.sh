#!/bin/sh
helm uninstall kubepromstack -n observability || true
helm uninstall loki -n observability || true
kubectl delete namespace observability || true
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install kubepromstack prometheus-community/kube-prometheus-stack -f ./scripts/prometheus-values.yaml --namespace observability --create-namespace --wait
helm install loki oci://registry-1.docker.io/bitnamicharts/grafana-loki -f ./scripts/loki-values.yaml --namespace observability --wait