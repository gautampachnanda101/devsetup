#!/bin/sh
helm repo add open-telemetry https://open-telemetry.github.io/opentelemetry-helm-charts
helm install local-otel-demo open-telemetry/opentelemetry-demo