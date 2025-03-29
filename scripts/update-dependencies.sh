#!/bin/bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm dependency update charts/monitoring-stack
