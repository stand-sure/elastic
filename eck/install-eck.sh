#! /bin/bash
kubectl create --filename crds.yaml --namespace elastic-system --namespace elastic-system

read -p "hit enter to view CRDs" -r
# view crds
kubectl get customresourcedefinitions.apiextensions.k8s.io | grep elastic

read -p "hit enter to view api resources" -r
#view resources
kubectl api-resources | grep elastic

read -p "hit enter to install operator" -r
# install operator with RBAC rules
kubectl apply --filename operator.yaml --namespace elastic-system --namespace elastic-system

read -p "hit enter to monitor" -r
# monitor
kubectl --namespace elastic-system logs --follow statefulset.apps/elastic-operator