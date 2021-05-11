#!/bin/bash

# Crie um certificado SSL autoassinado
sudo openssl req -new -newkey rsa:4096 -x509 -days 3650 -nodes \
             -subj /C=US/ST=NY/L=NY/O=NA/CN=localhost \
             -keyout /etc/ssl/insecure.key -out /etc/ssl/private/insecure.pem

# Crie um arquivo DHParam. Use 4096 bits em vez de 2048 bits na produção.
sudo openssl dhparam -out /etc/ssl/dhparam.pem 2048
