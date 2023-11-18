#!/bin/bash

kubectl apply -f configMap.yaml  

kubectl apply -f db_secrets.yaml

kubectl apply -f db_deployment.yaml

kubectl apply -f internal_service_serverToDB.yaml

kubectl apply -f server_deployment.yaml 

kubectl apply -f load_balancer_external.yaml 

