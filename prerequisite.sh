#!/bin/bash
# Install docker for Ubuntu 20.04 LTS

sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

# Add Docker official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Set up the stable repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

# Enable Docker to run when your system boots
systemctl enable docker


# Install python3 and Docker-Compose
sudo apt install -y python3 python3-pip

sudo pip3 install docker-compose