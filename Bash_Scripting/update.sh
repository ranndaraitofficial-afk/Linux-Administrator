#!/usr/bin/env bash

sudo apt update && sudo apt upgrade -y
sudo apt install -f -y
sudo apt autoremove -y


echo "Scipt Ruuning Successfully"
