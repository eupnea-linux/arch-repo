#!/bin/bash
# This script creates an arch repository layout in the current directory.
set -e

# Dump gpg private key into a file
echo "$private_key" >gpg-private-key.gpg

# import gpg private key
gpg --import gpg-private-key.gpg
# Dump public key into a file
echo "$public_key" >public_key.gpg

# Create dirs
mkdir -p eupnea-utils/os/any
cd eupnea-utils/os/any

# Copy packages
cp -r ../../../*.pkg.tar.gz .
# Sign packages
gpg --detach-sig eupnea-utils*.pkg.tar.gz

# Create repo and sign it
repo-add -s ./eupnea-utils.db.tar.gz *.pkg.tar.gz
