# Jenkins and Docker Installations Shell Script

1. Clone the repository
```
https://github.com/princebirring/jenkins-docker.git
```
2. Change the directory
```
cd jenkins-docker
```
3. Change the Permission of the jenkins-docker shell script.
```
chmod u+x jenkins-docker.sh
```
4. Run the jenkins-docker shell script
```
./jenkins-docker.sh
```
5. Jenkins will be running on private-ip:8080(Cloud) or localhost:8080(Local Machine). You require a password to access and create the jenkins admin account. You can get the password by running the following command. 
```
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```
6. Jenkins Status, Restart, Stop and Start. 
```
sudo service jenkins status
sudo service jenkins restart
sudo service jenkins stop
sudo service jenkins start
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
# Docker Commands
1. Delete all the Container running on the machine(Be Careful).
```
docker container rm -f $(docker ps -aq)
```
