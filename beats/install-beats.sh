#! /bin/bash
kubectl apply --filename quickstart-beats.yaml --namespace elastic-system

read -p "hit enter to view beats" -r
kubectl get beats --namespace elastic-system

read -p "hit enter to view status" -r
kubectl describe beats --namespace elastic-system