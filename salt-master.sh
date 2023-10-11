#!/bin/bash

# This script is for installing salt-master, it will use the internet to download dependencies

sudo apt --fix-broken install -y

sudo apt update -y

sudo apt upgrade -y

sudo curl -fsSL -o /usr/share/keyrings/salt-archive-keyring.gpg https://repo.saltproject.io/py3/debian/11/amd64/latest/salt-archive-keyring.gpg

sudo echo "deb [signed-by=/usr/share/keyrings/salt-archive-keyring.gpg arch=amd64] https://repo.saltproject.io/py3/debian/11/amd64/latest bullseye main" | sudo tee /etc/apt/sources.list.d/salt.list

sudo apt-get update -y

sudo apt-get install python3 salt-common -y

sudo apt-get install salt-master -y

sudo systemctl enable salt-master.service

sudo systemctl start salt-master.service

