#!/bin/bash

# Disable the network interface
sudo ifconfig wlan0 down

# Change the MAC address
sudo macchanger -a wlan0

# Enable the network interface
sudo ifconfig wlan0 up
