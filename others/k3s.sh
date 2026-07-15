#!/bin/bash
# 1. Directly run the installer script non-interactively
curl -sfL https://get.k3s.io | sh -

# 2. Wait 15 seconds for local API controllers to start up
sleep 15

# 3. Confirm node registration by querying the newly created config
export KUBECONFIG=/etc/rancher/k3s/k3s.yaml
/usr/local/bin/kubectl get nodes
