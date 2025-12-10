#!/bin/bash
set -e

# Start nginx
systemctl start nginx

# Enable nginx to start on boot
systemctl enable nginx

echo "Nginx started successfully"
