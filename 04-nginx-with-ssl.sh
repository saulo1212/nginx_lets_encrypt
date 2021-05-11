#!/bin/bash

# Copie sobre a configuração de demonstração habilitada para SSL.
sudo cp nginx/etc/nginx/sites-available/demo-ssl.conf \
        /etc/nginx/sites-available/demo.conf

#Reinicie o nginx porque alteramos um arquivo de configuração.
sudo service nginx restart
