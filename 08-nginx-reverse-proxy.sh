#!/bin/bash


# Faça backup do arquivo de demonstração original.
sudo mv /etc/nginx/sites-available/demo.conf \
        /etc/nginx/sites-available/demo-original.conf


# Substitua a configuração do antigo demo pela configuração do proxy reverso.
sudo cp nginx/etc/nginx/sites-available/demo-reverse-proxy.conf \
     /etc/nginx/sites-available/demo.conf


# Inicie um servidor da web Python em segundo plano.
cd /var/www/demo && python3 -m http.server 8000 &> /dev/null &

# Restart nginx 
sudo service nginx restart
