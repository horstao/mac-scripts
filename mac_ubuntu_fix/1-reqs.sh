#!/bin/bash

# Install Requirements for Macbook Pro 2013 optimizations

sudo apt update
sudo apt upgrade 

# Missed Packages
sudo apt install vim htop fortune msr-tools mbpfan cpufrequtils

# Limit CPU Speed (Fix Thermal Throttling)
sudo cp cpufrequtils /etc/default/cpufrequtils
echo restart cpufrequtils service !

# Set agressive cooling:
echo Replace the FAN settings:
sudo vi /etc/mbpfan.conf 
sudo systemctl enable mbpfan
sudo systemctl restart mbpfan

# Install Wifi
sudo apt install bcmwl-kernel-source

echo Reboot your System !