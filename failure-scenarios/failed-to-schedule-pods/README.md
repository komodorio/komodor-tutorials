# Scenario: My Application' Pods Failed to Schedule

## Why Is It Important?
Pods & Nodes  constraints can make the scheduling job challengin. When there is no node for a pod to run on, the pod fails with a **FailedScheduling** which causes a negative impact, espcially during scaling and rollout of a new version.

## Real Life Example
1. During scale up, many pods spawn to support the load, however if there are no available nodes in the cluster, the users will not be served.
2. An applicaiton pod requests a large amount of memory, which is unavailable, causing rollout to fail.

## How Komodor Helps?
Komodor detects anytime a pod is **failed to schedule** and creates an event with a clear explanation for **why it's failed to schedule**?

Komodor shows the failed deploy events on the timeline:
![banner](../../assets/img/deploy-scenarios/clean-timeline-with-deploy-event.png)

For each deploy events you have the full information about the deploy:
![banner](../../assets/img/deploy-scenarios/deploy-event-explanation.png)

Note: This pod requires 500Gi of memory, please makes sure your autoascaler doesn't allow this size of nodes.

## How To Run?
1. Apply an healthy deployment [healthy-deploy.yaml](healthy-deploy.yaml)
   ``` bash
   kubectl apply -f healthy-deploy.yaml
   ```


2. Apply [failed-scheduling.yaml](failed-scheduling.yaml)
   ``` bash
   kubectl apply -f failed-scheduling.yaml
   ```

    It takes at least 10 minutes for Kubernetes to mark this deploy as failed.

3. [Go to the relevant service in Komodor](https://app.komodor.com/services?textFilter=komodor-failed-scheduling) and click on the deploy event created.
   
