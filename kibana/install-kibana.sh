#! /bin/bash
kubectl apply --filename quickstart-kibana.yaml

echo "kubectl get all --selector common.k8s.elastic.co/type=kibana"
echo "kubectl get kibana"