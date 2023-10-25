#!/bin/bash

echo "ssh username"
read target
# Get the username

echo "ssh IP"
read IP
# Get the IP address

$remote= "$target@$IP"
#Combines them into an ssh login format

ssh-keygen -t ed25519 -f ~/.ssh/$target
ssh-copy-id -i ~/.ssh/$target $remote
ssh-add ~/.ssh/$target
#uses variables to generate and send an ssh key to the remote endpoint, then adds the key to the Local endpoint.