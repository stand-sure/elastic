#! /bin/bash
kubectl apply --filename quickstart-beats-filebeat.yaml --namespace elastic-system

read -p "hit enter to view beats" -r
kubectl get beats --namespace elastic-system

read -p "hit enter to view status" -r
kubectl describe beats --namespace elastic-system

read -p "hit enter to view logs" -r
kubectl logs --selector='beat.k8s.elastic.co/name=quickstart-beats' --namespace elastic-system --follow