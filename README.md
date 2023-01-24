# ECK Demo

*see https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-deploy-eck.html*

**NB: This repo is intended for eventual use with ArgoCD**, but the install scripts should work for you.

## Steps

1. Deploy ECK
2. Deploy Elasticsearch
3. Deploy Kibana

```bash
cd eck
./install-eck.sh

cd ../elasticsearch
./install-elastic-search.sh

cd ../kibana
./install-kibana.sh
```
