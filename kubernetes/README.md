# Installing Kubernetes

1. Clone the repository
```
git clone https://github.com/princebirring/DevOps.git
```
2. Change the directory
```
cd DevOps/kubernetes
```
3. Change the Permission of the kubernetes.sh shell script.
```
chmod u+x kubernetes.sh
```
4. Run the kubernetes shell script
```
./kubernetes.sh
```
5. Perform this step for all the nodes(Master and Worker).

## Setup Master Node

1. Initialise the master node using kubeadm (Run this command only on master node)
```
kubeadm init
```

2. After running above command, you will get commands to setup your kubectl client and to join other nodes this cluster. Setup kubectl client by run those commands and save cluster join command for later use. After setting up kubectl client, install pod network plugin. For this tutorial we will use weave plugin.
```
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
```
See, node status
```
kubectl get node  
```
```
NAME               STATUS            AGE  
masterserver   Ready,master   1m
```