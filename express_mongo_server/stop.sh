#!/bin/bash

kubectl delete -f configMap.yaml  

kubectl delete -f db_secrets.yaml

kubectl delete -f db_deployment.yaml

kubectl delete -f internal_service_serverToDB.yaml

kubectl delete -f server_deployment.yaml 

kubectl delete -f load_balancer_external.yaml 

