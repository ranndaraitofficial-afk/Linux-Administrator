#!/usr/bin/env bash

sudo apt update && sudo apt upgrade -y
sudo apt install -f -y
sudo apt install tmux openssh-server isc-dhcp-client nano vim  -y

echo "You have Install Basic tools of Linux Succesfully"
echo "Tools you have been installed : tmux,ssh,dhcp-client,nano,vim"


