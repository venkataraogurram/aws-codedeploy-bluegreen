#!/bin/bash
set -e

# Update package list
yum update -y

# Install nginx if not already installed
if ! command -v nginx &> /dev/null; then
    echo "Installing nginx..."
    amazon-linux-extras install nginx1 -y || yum install nginx -y
else
    echo "Nginx is already installed"
fi

# Stop nginx if running
systemctl stop nginx || true
