![banner](./assets/img/repo-banner.png)

# Komodor Failure Scenarios

This is the go-to repository to run scenarios on your clusters. These use cases  enable you simulate  day-to-day real life experiences. Running these scenarios will demonstrate Komodor's ability to identify and remediate these scenarios.


## How to Use?
Pick a scenario from the list below, apply it to your cluster. Open the [Komodor user interface](https://app.komodor.com/services) and navigate to the appropriate [Service](https://app.komodor.com/services) or ConfigMap.


## Before Starting

Make sure you have the [Komodor agent running](https://docs.komodor.com/Learn/Install-Komodor-Agent.html) and configured on your clusters.
[Configure monitors](https://app.komodor.com/main/monitors) to generate alerts in each failure.


## Scenarios

### Deploy Scenarios
- [Image Pull backoff](./deploys-scenarios/failed-deploy-image-pull-backoff)  
- [Create Container Config Error](./deploys-scenarios/failed-deploy-creation-config-error)
- [Deploy with a config map change](./deploys-scenarios/a-simple-deploy-with-a-configmap-change/)


### Failure Scenarios
- [Out of Memory](./failure-scenarios/OOMKilled)
- [Application Issue](./failure-scenarios/application-error-with-exception)
- [Failed Scheduling](./failure-scenarios/failed-to-schedule-pods)
