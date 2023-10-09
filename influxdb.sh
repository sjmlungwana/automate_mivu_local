#!/bin/bash

# This script is for installing influxdb 1.8.10

sudo apt --fix-broken install

sudo apt update

sudo dpkg -i influxdb_1.8.10_amd64.deb

sudo systemctl enable influxdb.service

sudo systemctl start influxdb.service