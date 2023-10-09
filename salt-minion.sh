#!/bin/bash

# This script is for installing salt-minion, it will use the internet to download dependencies

sudo curl -fsSL -o /usr/share/keyrings/salt-archive-keyring.gpg https://repo.saltproject.io/py3/debian/11/amd64/latest/salt-archive-keyring.gpg

sudo echo "deb [signed-by=/usr/share/keyrings/salt-archive-keyring.gpg arch=amd64] https://repo.saltproject.io/py3/debian/11/amd64/latest bullseye main" | tee /etc/apt/sources.list.d/salt.list

sudo apt-get update -y

sudo apt-get install salt-minion -y

sudo systemctl enable salt-minion.service

sudo systemctl start salt-minion.service