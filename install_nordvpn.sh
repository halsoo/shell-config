#!/bin/bash
sudo apt-get update
yes '' | sh <(curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh)
sudo usermod -aG nordvpn $USER
echo ''
echo NOW RESTART YOUR CONTAINER
