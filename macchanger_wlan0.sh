#!/bin/bash

# Disable the network interface
ifconfig wlan0 down

# Change the MAC address
macchanger -a wlan0

# Enable the network interface
ifconfig wlan0 up

# Check if 'service' command is available and restart the network manager accordingly
if command -v service &> /dev/null; then
    systemctl restart NetworkManager
else
    service network-manager restart
fi