#! /bin/bash
kubectl apply --filename quickstart-kibana.yaml --namespace elastic-system

read -p "hit enter to view all kibana resources" -r
kubectl get all --selector common.k8s.elastic.co/type=kibana --namespace elastic-system

read -p "hit enter to view kibana" -r
kubectl get kibana