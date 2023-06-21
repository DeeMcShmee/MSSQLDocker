#! /bin/bash

sudo apt update
sudo apt upgrade

#Install prerequisites
sudo apt install apt-transport-https ca-certificates curl software-properties-common gnupg-agent -y
#add the docker key
curl -fsSL https://download.docker.com/linux/$(awk -F'=' '/^ID=/{ print $NF }' /etc/os-release)/gpg | sudo apt-key add -

#add the docker repo
sudo add-apt-repository "deb [arch=$(dpkg --print-architecture)] https://download.docker.com/linux/$(awk -F'=' '/^ID=/{ print $NF }' /etc/os-release) $(lsb_release -cs) stable"

#Install docker
sudo apt install docker-ce docker-compose containerd.io -y

