#!/bin/bash

# Disable the network interface
ifconfig wlan0 down

# Change the MAC address
macchanger -a wlan0

# Enable the network interface
ifconfig wlan0 up
