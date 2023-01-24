#! /bin/bash
kubectl create --filename crds.yaml

# view crds
kubectl get customresourcedefinitions.apiextensions.k8s.io | grep elastic

#view resources
kubectl api-resources --api-group=elastic.co

# install operator with RBAC rules
kubectl apply --filename operator.yaml

# monitor
kubectl --namespace elastic-system logs --follow statefulset.apps/elastic-operator