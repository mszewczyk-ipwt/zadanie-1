# Zadanie

Deploy the solution by using `helm`

"Create files for deploying the Nginx HTTP server onto a K8S cluster
1. Nginx should be reachable from outside of the K8S cluster

    I was wondering if it is about `ingress` or `service`, but eventually I have configured [service](nginx-sofixit/templates/service.yml#L19)

2. Nginx should be reachable by "nginx-sofixit" name inside the K8S cluster

    Just run:
    ```
    $ kubectl run -i --tty --rm --image=ubuntu --restart=Never -- bash
    $ apt-get update && apt-get install -y curl && curl nginx-sofixit
    ```

3. Nginx should have persistent storage for static content.

    I have added persistent storage as a `hostPath` [here](nginx-sofixit/templates/deployment.yaml#L19)

4. Nginx should be configurable without re-building the nginx Docker image

    You can put configurations such as `upstream` or `server` into [values](nginx-sofixit/values.yaml#L8) like shown in the example

5. Nginx should have its resources limited in order not to hog the underlying machine

    Declaration of resources is placed [here](nginx-sofixit/templates/deployment.yaml#L36)

6. Nginx should have authentication enabled and configurable without re-building the nginx Docker image

    I created basic auth for nginx and configuring this auth is described [here](nginx-sofixit/values.yaml#L1)

7. (BONUS) Nginx should have SSL encryption enabled and configurable without re-building the nginx Docker image"

    I was wondering if it is related to `ingress` but the "re-building" word in the task means probably that nginx should be configured to use that, so it is configured in the `tls` section in [values](nginx-sofixit/values.yaml#L21)