# Local developer machine setup for K8
Setup local k8 cluster using minikube

You can start the setup on minikube by running the make command `make install`

This should setup minikube with:
- Traefik & ninx Ingress
- K8 dashboard and metric server
- With additional stack installed using helm charts
  - Prometheus stack
  - Loki
  - otel
  - cert manager
