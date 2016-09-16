#!/bin/bash

# update package information and install CA certifications
sudo apt-get update && sudo apt-get install apt-transport-https ca-certificates

# add new GPG key
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070A

# add docker repository
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" > /etc/apt/sources.list.d/docker.list

# update and purge the old one
sudo apt-get update && sudo apt-get purge lxc-docker

# prerequisites
sudo apt-get install -y linux-image-extra-$(uname -r) linux-image-extra-virtual

# install 
sudo apt-get update && sudo apt-get install -y docker-engine && sudo service docker start

# verify
sudo docker run hello-world
