#!/bin/bash

# Create the Let's Encrypt / ACME challenge path.
sudo mkdir -p /var/www/letsencrypt/.well-known/acme-challenge

# Copy over the Let's Encrypt SSL enabled build config.
sudo cp ~/nginx/etc/nginx/sites-available/build-lets-encrypt-ssl.conf \
     /etc/nginx/sites-available/build.conf

# Restart nginx because we changed a config file.
sudo service nginx restart
