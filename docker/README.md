# Docker Installations

1. Clone the repository
```
git clone https://github.com/princebirring/DevOps.git
```
2. Change the directory
```
cd DevOps/docker
```
3. Change the Permission of the docker shell script.
```
chmod u+x docker.sh
```
4. Run the jenkins-docker shell script
```
./docker.sh
```

# Manage Docker as a non-root user
1. Create the docker group.
```
sudo groupadd docker
```
2. Add your user to the docker group.
```
sudo usermod -aG docker $USER
```
3. Logout from server and Login back. 

# Docker Commands
1. Delete all the Container running on the machine(Be Careful).
```
docker container rm -f $(docker ps -aq)
```
2. Delete Dangling Images
```
docker rmi $(docker images -qa -f 'dangling=true')
```