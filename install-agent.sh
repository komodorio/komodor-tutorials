#!/bin/sh

export API_KEY=<api_key>
export CLUSTER_NAME=<cluster_name>

helm repo add komodorio https://helm-charts.komodor.io
helm repo update; helm upgrade --install k8s-watcher komodorio/k8s-watcher --set watcher.actions.basic=true --set watcher.actions.advanced=true --set apiKey=$API_KEY --set watcher.clusterName=$CLUSTER_NAME  --wait --timeout=90s && open https://app.komodor.com/main/services
