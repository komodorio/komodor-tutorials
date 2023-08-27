#!/bin/sh

echo ""
echo "Please insert your name to create a new namespace: (lower case, no spaces allowed)"
read NS_NAME

kubectl create ns $NS_NAME

echo ""
echo "Deploy Services : (n/N/y/Y)"
read ANSWER
if [[ $ANSWER == "Y" ]] ||  [[ $ANSWER == "y" ]]
then
    kubectl apply -f https://raw.githubusercontent.com/komodorio/komodor-tutorials/master/deploys-scenarios/failed-deploy-image-pull-backoff/nginx-image-healthy.yaml -n $NS_NAME
    kubectl apply -f https://raw.githubusercontent.com/komodorio/komodor-tutorials/master/deploys-scenarios/failed-deploy-creation-config-error/healthy-deploy.yaml -n $NS_NAME
    kubectl apply -f https://raw.githubusercontent.com/komodorio/komodor-tutorials/master/failure-scenarios/application-error-with-exception/simple-application.yaml -n $NS_NAME
    kubectl apply -f https://raw.githubusercontent.com/komodorio/komodor-tutorials/master/failure-scenarios/OOMKilled/oom.yaml -n $NS_NAME
    sleep 5
    kubectl apply -f https://raw.githubusercontent.com/komodorio/komodor-tutorials/master/deploys-scenarios/failed-deploy-image-pull-backoff/imagepullbackoff.yaml -n $NS_NAME
    sleep 5
    kubectl apply -f https://raw.githubusercontent.com/komodorio/komodor-tutorials/master/deploys-scenarios/failed-deploy-creation-config-error/createcontainerconfigerror.yaml -n $NS_NAME
    sleep 5
    kubectl apply -f https://raw.githubusercontent.com/komodorio/komodor-tutorials/master/failure-scenarios/application-error-with-exception/application-error.yaml -n $NS_NAME
else
    echo "Skipping..."  
fi

echo ""
echo "  WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING!  "
echo ""
echo "  Do you want to delete your environment? (n/N/y/Y)"
echo ""
read ANSWER
if [[ $ANSWER == "Y" ]] ||  [[ $ANSWER == "y" ]]
then
    kubectl delete ns $NS_NAME
else
    echo "Skipping..."  
fi

echo "END - Thank you"