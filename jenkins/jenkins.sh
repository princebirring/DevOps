#!/bin/bash -       
#Title       : jenkins.sh
#Description : This script will install jenkins in a ubuntu server with all dependencies. 
#Author		 : Prince Pal Birring
#Date        : 8/1/2019
#========================================================================================

#Installing Jenkins in Ubuntu
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install openjdk-8-jdk -y 
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update -y 
sudo apt-get install jenkins -y 
sudo ufw allow 8080
sudo ufw status


