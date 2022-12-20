# Scenario: Correlate Deploy Event with Configmap Changes

## Why Is It Importatnt?
Many services are using configmap to seperate the code from the running configuration. When there is a value change in the config map, it is very hard to correlate it with the deployment change.

## Real Life Example
A user pushed a change that changes the configuration value and when someone else, like youselfes is coming to troubleshoot. The infomartion about the configuration change is invisible.

## How Komodor Helps?
Komodor correlate changes across the system to a deploy event in a services. You can quickly identify all changes related to a specific deploy by only clicking on the deploy event.

For example:
![banner](../../assets/img/deploy-with-configmap-example.png)


## How To Run?
1. Apply [step1.yaml](step1.yaml)
2. Apply [step2.yaml](step2.yaml)
3. [Go to the relevant service in Komodor](https://app.komodor.com/services?textFilter=komodor-configmap-deploy) and click on the deploy event created.
   