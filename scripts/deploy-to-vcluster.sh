#!/bin/bash
for vcl in vcluster{1..3}; do
  helm upgrade --install monitoring-stack ./charts/monitoring-stack \
    --values values/$vcl-monitoring.yaml
  kubectl apply -f ./charts/cost-analyzer/templates/
done
