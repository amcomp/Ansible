#!/bin/bash

# Prompt for SSH username
echo "Enter your SSH username:"
read target

# Prompt for remote server's IP address or hostname
echo "Enter the remote server's IP or hostname:"
read IP

# Combine username and IP to form the remote address
remote="$target@$IP"

# Generate an SSH key pair
ssh-keygen -t ed25519 -f ~/.ssh/$target

# Copy the public key to the remote server
ssh-copy-id -i ~/.ssh/$target $remote

# Add the private key to your SSH agent
ssh-add ~/.ssh/$target

echo "SSH key setup completed."

#uses variables to generate and send an ssh key to the remote endpoint, then adds the key to the Local endpoint.