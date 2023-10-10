#!/bin/bash

# This script is for installing OpenVPN, it uses the internet to download and install openvpn

sudo apt --fix-broken install -y

sudo apt update -y

sudo apt upgrade -y

sudo apt install openvpn -y