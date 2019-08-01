#!/bin/bash -       
#Title       : jenkins.sh
#Description : This script will install Kubernetes(Master Node and Worker Node) in a ubuntu server with all dependencies. 
#Author		 : Prince Pal Birring
#Date        : 8/1/2019
#========================================================================================================================

# Installing Kubernetes(Master Node and Worker Node)
# 1. Update the existing packages and install required dependencies.
apt-get update && apt-get install -y apt-transport-https

# 2. Add key.
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

# 3. Setup kubernetes repository
cat <<EOF > /etc/apt/sources.list.d/kubernetes.list  
deb http://apt.kubernetes.io/ kubernetes-xenial main  
EOF

# 4. Update repository to fetch kubernetes package.
apt-get update

# 5. Install Container runtime- Docker
apt-get install docker.io

# 6. Install kubelet (Kuberenetes node agent), kubeadm, kubectl (client tool to manage kubernetes) and kubernetes-cni (kubernetes conatiner network interface).
apt-get install -y kubelet kubeadm kubectl kubernetes-cni
