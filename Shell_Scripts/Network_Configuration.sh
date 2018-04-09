#!/bin/bash

#To view all currently available interfaces
ifconfig -a

#To temporarily configure an IP Address
sudo ifconfig wlan0 192.168.0.206 netmask 255.255.255.0

#To verify the IP address configuration of wlan0
ifconfig wlan0

#To configure a default gateway
sudo route add default gw 192.168.0.7 wlan0

#To verify your default gateway configuration
route -n

nano /etc/resolv.conf
