#!/usr/bin/env bash
set -e

echo "Running post-create tasks..."

# Start required services
sudo systemctl start nix-daemon
sudo systemctl start dbus

# Update Nix channels
nix-channel --update

# Install any additional packages
nix-env -iA nixpkgs.hello

echo "Post-create tasks completed."