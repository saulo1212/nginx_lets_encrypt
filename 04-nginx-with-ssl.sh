#!/bin/bash

# Copy over the SSL enabled build config.
sudo cp ~/nginx/etc/nginx/sites-available/build-ssl.conf \
        /etc/nginx/sites-available/build.conf

# Restart nginx because we changed a config file.
sudo service nginx restart
