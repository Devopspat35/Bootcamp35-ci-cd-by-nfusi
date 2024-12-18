#!/bin/bash
response="$(aws eks list-clusters --region us-east-2 --output text | grep -i twtech-cluster 2>&1)" 
if [[ $? -eq 0 ]]; then
    echo "Success: twtech-cluster exist"
    aws eks --region us-east-2 update-kubeconfig --name twtech-cluster && export KUBE_CONFIG_PATH=~/.kube/config

else
    echo "Error: Dominion-cluster does not exist"
fi
