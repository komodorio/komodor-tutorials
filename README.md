# Komodor Failure Scenarios

## How it works

Clone the repo, kubectl apply -f any of the demos to see them in action.

All services are prefixed with "komodor" so they're easy to spot and search for if ever using in an environment with exsiting deployment.

These deployment will NOT cause any issues outside of their immediate deployment, they will NOT crash nodes, or control/data plane services.

## Currently supported

- Image Pull backoff
    - Purpose: This deployment will simulate an image pull backoff issue
    - File: imagepullbackoff.yaml
- Out of Memory
    - Purpose: Simulates an OOM, afterone minute this service will run out of memory
    - File: oom.yaml
- Crash Loop BackOff
    - Purpose: This deployment will create a crash loop backoff.
    - File: crashloopbackoff.yaml
- Create Container Config Error
    - Purpose: This will simulate an issue with a config container.
    - File: createcontainerconfigerror.yaml

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

## Planned scenarios

- Node issues
- PVC issues
- Service issues (Ingress, endpoints, LBs...)
- Config map changes
- Playbook scenarios
- Integration scenarios
    - Sentry
    - Slack
    - Datadog
    - Grafana
    - PagerDuty
