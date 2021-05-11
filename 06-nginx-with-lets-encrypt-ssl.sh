#!/bin/bash


# Crie o caminho  Let's Encrypt / ACME.
sudo mkdir -p /var/www/letsencrypt/.well-known/acme-challenge

# Copie a configuração de demonstração do Let's Encrypt SSL habilitado.
sudo cp nginx/etc/nginx/sites-available/demo-lets-encrypt-ssl.conf \
     /etc/nginx/sites-available/demo.conf

# Restart nginx 
sudo service nginx restart
