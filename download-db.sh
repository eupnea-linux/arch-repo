#!/bin/bash

# This script downloads the current package database from the gh-pages branch
# Do not set -e here, as we want to continue the workflow even if the download fails

# Get the gh-pages branch
git clone --branch=gh-pages https://github.com/eupnea-linux/arch-repo /tmp/arch-repo

# Copy the database to the current directory
cp /tmp/arch-repo/eupnea/os/any/eupnea.db.tar.gz .