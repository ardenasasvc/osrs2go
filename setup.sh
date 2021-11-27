#!/bin/bash

# do the thing
sudo apt update && sudo apt upgrade

# get curl
sudo apt install curl 

# add package signing key and repo
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/hirsute.gpg | sudo apt-key add -
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/hirsute.list | sudo tee /etc/apt/sources.list.d/tailscale.list

# update and install tailscale
sudo apt-get update
sudo apt-get install tailscale

# start tailscale and retrieve ipv4
sudo tailscale up
tailscale ip -4

# download runelite silently
curl -s https://github.com/runelite/launcher/releases/download/2.2.0/RuneLite.AppImage -o runelite.AppImage

# should be done now.  expire the password for current user. (Forces a change next login)
passwd --expire $(whoami)
