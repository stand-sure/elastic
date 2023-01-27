#! /bin/bash
kubectl apply --filename quickstart-beats.yaml --namespace elastic-system

read -p "hit enter to view beats" -r
kubectl get beats --namespace elastic-system

read -p "hit enter to view status" -r
kubectl describe beats --namespace elastic-system

read -p "hit enter to view pods" -r
kubectl get pods --selector='beat.k8s.elastic.co/name=quickstart-beats' --namespace elastic-system