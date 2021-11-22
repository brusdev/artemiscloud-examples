#!/bin/bash

OPERATOR_VERSION=v0.20.1

kubectl create -f https://raw.githubusercontent.com/artemiscloud/activemq-artemis-operator/${OPERATOR_VERSION}/deploy/service_account.yaml
kubectl create -f https://raw.githubusercontent.com/artemiscloud/activemq-artemis-operator/${OPERATOR_VERSION}/deploy/role.yaml
kubectl create -f https://raw.githubusercontent.com/artemiscloud/activemq-artemis-operator/${OPERATOR_VERSION}/deploy/role_binding.yaml

kubectl create -f https://raw.githubusercontent.com/artemiscloud/activemq-artemis-operator/${OPERATOR_VERSION}/deploy/crds/broker_activemqartemis_crd.yaml
kubectl create -f https://raw.githubusercontent.com/artemiscloud/activemq-artemis-operator/${OPERATOR_VERSION}/deploy/crds/broker_activemqartemisaddress_crd.yaml
kubectl create -f https://raw.githubusercontent.com/artemiscloud/activemq-artemis-operator/${OPERATOR_VERSION}/deploy/crds/broker_activemqartemisscaledown_crd.yaml
kubectl create -f https://raw.githubusercontent.com/artemiscloud/activemq-artemis-operator/${OPERATOR_VERSION}/deploy/crds/broker_activemqartemissecurity_crd.yaml

kubectl create -f https://raw.githubusercontent.com/artemiscloud/activemq-artemis-operator/${OPERATOR_VERSION}/deploy/operator.yaml
