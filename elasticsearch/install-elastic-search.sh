#! /bin/bash
kubectl apply --filename quickstart-elasticsearch.yaml

echo "to get elastic search"
echo "kubectl get elasticsearch"

echo "to get pods"
echo "kubectl get pods --selector='elasticsearch.k8s.elastic.co/cluster-name=quickstart'"

echo "to get logs"
echo "kubectl logs --selector='elasticsearch.k8s.elastic.co/cluster-name=quickstart' --follow"

echo "to get password"
echo "kubectl view-secret quickstart-es-elastic-user elastic; echo"