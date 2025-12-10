#!/bin/bash

# Stop nginx gracefully
systemctl stop nginx || true

# Remove old index.html if exists
rm -f /usr/share/nginx/html/index.html

echo "Nginx stopped and old files cleaned"
