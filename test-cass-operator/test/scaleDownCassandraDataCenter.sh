#!/bin/bash

set -ex

kubectl apply -f cdc-2.yaml
sleep 240s
echo '====' >> stdout.txt
kubectl get pods >> stdout.txt
kubectl get pvc >> stdout.txt

kubectl apply -f cdc-1.yaml
sleep 150s
echo '====' >> stdout.txt
kubectl get pods >> stdout.txt
kubectl get pvc >> stdout.txt
