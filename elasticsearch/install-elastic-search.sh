#! /bin/bash
kubectl apply --filename quickstart-elasticsearch.yaml --namespace elastic-system

read -p "hit enter to view elasticsearch" -r 
kubectl get elasticsearch --namespace elastic-system

read -p "hit enter to view pods" -r
kubectl get pods --selector='elasticsearch.k8s.elastic.co/cluster-name=quickstart' --namespace elastic-system

read -p "hit enter to view logs" -r
kubectl logs --selector='elasticsearch.k8s.elastic.co/cluster-name=quickstart' --namespace elastic-system

read -p "hit enter to view password" -r
kubectl view-secret quickstart-es-elastic-user elastic --namespace elastic-system; echo