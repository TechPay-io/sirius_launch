#!/bin/bash

#######################################
# Bash script to launch a read-only go-photon node
#######################################

# Pick a file for your network
# The file for mainnet is mainnet.g
NETWORK='mainnet.g'

# Update and apt-get install build-essential
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y build-essential

# Install golang
wget https://dl.google.com/go/go1.15.10.linux-amd64.tar.gz
sudo tar -xvf go1.15.10.linux-amd64.tar.gz -C /usr/local/

# Setup golang environment variables
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# Checkout and build go-photon
git clone https://github.com/TechPay-io/go-photon.git
cd go-photon/
make

# Download the genesis file
cd build/
wget https://photon.techpay.io/$NETWORK

# Start a read-only node to join the selected network
nohup ./photon --genesis $NETWORK &
