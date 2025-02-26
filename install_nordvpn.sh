#!/bin/bash
sudo apt-get update
sudo apt-get -y install curl
yes '' | sh <(curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh)
sudo usermod -aG nordvpn $USER
echo ''
echo NOW RESTART YOUR CONTAINER
