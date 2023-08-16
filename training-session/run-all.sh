#!/bin/sh

echo "Please insert your name to create a new namespace: (lower case, no spaces allowed)"
read NS_NAME

kubectl create ns $NS_NAME

echo "Deploying services"

kubectl apply -f https://raw.githubusercontent.com/komodorio/komodor-tutorials/master/deploys-scenarios/failed-deploy-image-pull-backoff/nginx-image-healthy.yaml -n $NS_NAME
kubectl apply -f https://raw.githubusercontent.com/komodorio/komodor-tutorials/master/deploys-scenarios/failed-deploy-creation-config-error/healthy-deploy.yaml -n $NS_NAME
kubectl apply -f https://raw.githubusercontent.com/komodorio/komodor-tutorials/master/failure-scenarios/application-error-with-exception/simple-application.yaml -n $NS_NAME
kubectl apply -f https://raw.githubusercontent.com/komodorio/komodor-tutorials/master/failure-scenarios/OOMKilled/oom.yaml -n $NS_NAME
