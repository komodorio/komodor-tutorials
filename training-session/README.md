### Namespace Creation

1. Create your namespace:

```bash
kubectl create ns [user]
```

<br>
<br>

### First Deploy + Service Operations

1. Deploy a new deployment

```bash
kubectl apply -f https://raw.githubusercontent.com/komodorio/komodor-tutorials/master/deploys-scenarios/failed-deploy-image-pull-backoff/nginx-image-healthy.yaml -n [user]
```

2. Review the service created in Komodor

2. Delete one of the pods and check the new pod that just spawned

3. Scale the replica to 2 using the dedicated button on the top of the screen

4. Change the image to version 1.20.0 using the “edit yaml” button and check the deploy that just started

<br>
<br>

### Failed Deploy - Image Errors

1. Change the image of the deployment using this configuration

```bash
kubectl apply -f https://raw.githubusercontent.com/komodorio/komodor-tutorials/master/deploys-scenarios/failed-deploy-image-pull-backoff/imagepullbackoff.yaml -n [user]]
```

2. Check the failed deploy and revert it using the button on the suggested actions section

<br>
<br>

### Application View

Application views allow you to scope Komodor into your own application and get insights. 

1. [Create a new application view](https://app.komodor.com/app-view/new), select dynamic scope for your own namespace.
   

### Failed Deploy - Configuration Errors

1. Deploy a new deployment

```bash
kubectl apply -f https://raw.githubusercontent.com/komodorio/komodor-tutorials/master/deploys-scenarios/failed-deploy-creation-config-error/healthy-deploy.yaml -n [user]
```

2. After the deploy is completed, apply the next deploy - which is going to fail

```bash
kubectl apply -f https://raw.githubusercontent.com/komodorio/komodor-tutorials/master/deploys-scenarios/failed-deploy-creation-config-error/createcontainerconfigerror.yaml -n [user]
```

3. After you understand what's the reason for the failure, edit the yaml and fix the issue

<br>
<br>

### Troubleshooting - CrashLoop

1. Deploy a new deployment

```bash
kubectl apply -f https://raw.githubusercontent.com/komodorio/komodor-tutorials/master/failure-scenarios/application-error-with-exception/simple-application.yaml -n [user]
```

2. Wait it for it to be healthy and apply a new version of this deployment

```bash
kubectl apply -f https://raw.githubusercontent.com/komodorio/komodor-tutorials/master/failure-scenarios/application-error-with-exception/application-error.yaml -n [user]
```

3. Fix the issue by reverting it back to the previous version or edit the yaml.
   Advanced users - You can also edit the code resides in the configmap and force a rollout with the new version.

<br>
<br>

### Troubleshooting - OOMKilled

1. Apply a new deployment

```bash
kubectl apply -f https://raw.githubusercontent.com/komodorio/komodor-tutorials/master/failure-scenarios/OOMKilled/oom.yaml -n [user]
```

2. Review the issues created and the suggested actions.

3. Based on the suggest actions, change the memory limits to 75Mi.

<br>
<br>

### Troubleshooting - Probes

1. Deploy a new deployment

```bash
kubectl apply -f https://raw.githubusercontent.com/komodorio/komodor-tutorials/add-ready-live-example/failure-scenarios/ready-live-failure/healthy-app.yaml -n [user]
```

1. Check the best practices section in the info tab. Which probes are missing?

2. Let's configure it using this yaml - apply it

```bash
kubectl apply -f https://raw.githubusercontent.com/komodorio/komodor-tutorials/add-ready-live-example/failure-scenarios/ready-live-failure/fail-both.yaml -n [user]
```

3. let’s review the diff between the deploy on the deploy event

4. Check why the deploy failed - beacuse of liveness probes failure (you can find it in the events of the pod)

5. Change the configuration of the probes using the "edit YAML" button

## Delete Your Namespace

```bash
kubectl delete ns [user]
```


## Run all
```bash
bash <(curl -s https://raw.githubusercontent.com/komodorio/komodor-tutorials/master/training-session/run-all.sh)
```
