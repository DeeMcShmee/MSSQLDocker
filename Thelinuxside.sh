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

#enable and start docker
sudo systemctl enable docker && sudo systemctl start docker

#add user to the docker
sudo usermod -aG docker $USER

#reauthenticate to take effect
su - $USER

#create working environment
mkdir ~/docker/mssql -p

#I'm the boss
sudo chown "$USER":"$USER" ~/docker -R

#Allow the container to write in the directories
sudo chmod a+rwx -R ~/docker/mssql

#clone a mock sql server container example shotout to Vin-yu for the example
git clone https://github.com/microsoft/mssql-docker.git

#build with docker build
cd mssql-docker/linux/preview/examples/mssql-customize
docker build -t mssql-custom . #the dot is very important

#Then create a new container using docker run

docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=StrongPassw0rd' -p 1433:1433 --name sql1  -d mssql-custom

#sql1 is whatever name you want
#Note: MSSQL passwords must be at least 8 characters long, contain upper case, lower case and digits.
