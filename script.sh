#!/bin/bash

# This script verifies environment variables and triggers another script for installation.

if [ $CHRONOGRAF=="yes" ]; then
    sudo sh chronograf.sh
fi
if [ $INFLUX=="yes" ]; then
    sudo sh influxdb.sh
fi
if [ $GRAFANA=="yes" ]; then
    sudo sh grafana.sh
fi
if [ $SALTMASTER=="yes" ]; then
    sudo sh salt-master.sh
fi
if [ $SALTMINION=="yes" ]; then
    sudo sh salt-minion.sh
fi
if [ $OPENVPN=="yes" ]; then
    sudo sh openvpn.sh
fi
if [ $MIMIR=="yes" ]; then
    sudo sh mimir.sh
fi