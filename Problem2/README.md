# DevOps Engineer Technical Test - Solution

## Problem 2: Horizontal Pod Autoscaler (HPA)

### Instructions

1. Ensure you have MicroK8s installed on an Ubuntu 22.04 system.
2. Create a namespace for the project:
    ```bash
    microk8s kubectl create namespace a2odev-company
    ```
3. Apply the deployment and service configuration:
    ```bash
    microk8s kubectl apply -f deployment.yaml
    ```
4. Apply the Horizontal Pod Autoscaler configuration:
    ```bash
    microk8s kubectl apply -f hpa.yaml
    ```

### Explanation

- The deployment creates an nginx pod with resource requests for CPU and memory.
- The service exposes the nginx pod via a ClusterIP.
- The HPA scales the deployment based on CPU and memory utilization.
- A liveness probe checks the health of the nginx container every 60 seconds.
