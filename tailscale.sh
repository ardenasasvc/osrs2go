#!/bin/bash

# add package signing key and repo
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/focal.gpg | sudo apt-key add -
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/focal.list | sudo tee /etc/apt/sources.list.d/tailscale.list

# update and install tailscale
sudo apt-get update
sudo apt-get install tailscale

# start tailscale and retrieve ipv4
sudo tailscale up
tailscale ip -4