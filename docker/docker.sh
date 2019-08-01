#!/bin/bash -       
#Title       : docker.sh
#Description : This script will install docker in a ubuntu server with all dependencies. 
#Author		 : Prince Pal Birring
#Date        : 8/1/2019
#=======================================================================================

#Installing docker in Ubuntu
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install docker.io -y