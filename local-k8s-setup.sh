#!/bin/bash

###
#IF RUNNING THIS SCRIPT WITHIN VMWARE WORKSTATION OR ANOTHER HYPERVISOR MAKE SURE THE ABILITY FOR NESTED VIRTUALISATION IS ENABLED.
#SUCCESFUL COMPLETION OF THE SCRIPT CAN BE TESTED BY RUNNING "minikube status" and "kubectl version".
###
sudo apt update
sudo apt install virtualbox -y
sudo snap install kubectl --classic
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64   && chmod +x minikube
sudo install minikube /usr/local/bin/
minikube start --driver=virtualbox
