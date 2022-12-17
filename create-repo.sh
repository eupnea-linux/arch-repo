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
mkdir -p repodata/x86_64
cd repodata/x86_64

# Copy packages
cp -r ../../*.pkg.tar.gz .
# Sign packages
echo "Signing packages"
# For some reason a eupnea* wildcard doesnt sign all packages
gpg --detach-sig eupnea-system*.pkg.tar.gz || true
gpg --detach-sig eupnea-utils*.pkg.tar.gz || true
gpg --detach-sig cgpt-vboot-utils*.pkg.tar.gz || true

# Create repo and sign it
repo-add -s ./eupnea.db.tar.gz *.pkg.tar.gz
