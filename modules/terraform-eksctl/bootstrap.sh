#!/bin/bash
sudo -i
sudo hostnamectl set-hostname  terraform
sudo timedatectl set-timezone America/New_York
sudo apt update -y
sudo apt install tree nano dnf git wget rpm snap vim -y
sudo apt install net-tools unzip gnupg2 curl nginx -y
sudo apt remove java* -y
sudo apt install openjdk-11-jre -y

#Enable PasswordAuthentication in the server
sudo sed -i "/^[^#]*PasswordAuthentication[[:space:]]no/c\PasswordAuthentication yes" /etc/ssh/sshd_config
sudo service sshd restart

#install aws-cli for ubuntu
# https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

#install helm chart on ubuntu
#https://helm.sh/docs/intro/install/
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

#installing kubectl utility for unbuntu
#   https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html   
curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.31.2/2024-11-15/bin/linux/amd64/kubectl
chmod +x ./kubectl
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$HOME/bin:$PATH

#installing eksctl utility on ubuntu
#https://eksctl.io/installation/
#https://learn.arm.com/install-guides/eksctl/
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin

#install terraform utility
cd /opt
sudo snap install terraform --classic

#update kubeconfig file to access the cluster with kubectl utility
#aws eks --region us-east-2 update-kubeconfig --name my-eks-cluster    #if the eks cluster is already provisioned
#verify version
# terraform --version
# aws  --version
# helm  version
# kubectl version
# eksctl  version
