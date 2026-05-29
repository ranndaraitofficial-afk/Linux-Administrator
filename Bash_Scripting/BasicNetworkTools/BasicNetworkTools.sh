#!/usr/bin/env bash

sudo apt update && sudo apt upgrade -y
sudo apt install -f -y

sudo apt install curl wget iproute2 iputils-ping traceroute dnsutils netcat nmap -y

echo "Script have been running Successfully!"
echo "Tools have been install"
echo "curl"
echo "wget"
echo "iproute2"
echo "ping"
echo "traceroute"
echo "nslookup"
echo "netcat"
echo "nmap"

