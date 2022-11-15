# Komodor Failure Scenarios

## How it works

Clone the repo, kubectl apply -f any of the demos to see them in action.

All services are prefixed with "komodor" so they're easy to spot and search for if ever using in an environment with exsiting deployment.

These deployment will NOT cause any issues outside of their immediate deployment, they will NOT crash nodes, or control/data plane services.
ads
## Currently supported

- Image Pull backoff
    - Purpose: This deployment will simulate an immge pull backoff issue
    - File: failed-deploys-scenarios/imagepullbackoff.yaml
- Create Container Config Error
    - Purpose: This deployment will simulate deployment with unkown ref to a configmap
    - File: failed-deploys-scenarios/createcontainerconfigerror.yaml
- Out of Memory
    - Purpose: Simulates an OOM, afterone minute this service will run out of memory
    - File: failed-pods-scenarios/oom.yaml
- Application Issue
    - Purpose: Simulates an application failure.
    - File: failed-pods-scenarios/application-issue.yaml
- Failed Scheduling
    - Purpose: This deployment will failed to be scheduled on any node in the cluster.
    - File: failed-pods-scenarios/failed-scheduling.yaml
- Crash Loop Backoff
    - Purpose: This deployment will failed to start to simulate crashloopbackoff
    - File: failed-pods-scenarios/crashloopbackoff.yaml

## Demo/Training deployments

### Beginner

- Step 1: Create basic deployment
- Step 2: Add Komodor service link annotations
- Step 3: Add Komodor deployment link annotations
- Step 4: Add an additional container on a different port
- Step 5: Change the second container to create an error

### Intermediate

- Coming soon

### Advanced

- Coming soon

