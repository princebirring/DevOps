# Install MiniKube in Linux/OSX
### Prerequisites<br/>
1. Homebrew - https://brew.sh/
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
2. Virtualbox 
```
brew cask install virtualbox
```
### Install Minikube<br/>
1. OSX
```
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.26.1/minikube-darwin-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
```
2. Linux
```
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.26.1/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
```
### Useful Commands
1. Start a Cluster
```
minikube start
```
2. Stop a Cluster
```
minikube stop
```
3. Check Status
```
minikube status
```
4. Launch dashboard
```
minikube dashboard
```