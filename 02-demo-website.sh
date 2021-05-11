#!/bin/bash

# Remova o site nginx padrão e as configurações associadas.
sudo rm -rf /var/www/html
sudo rm -rf /etc/nginx/sites-enabled/default /etc/nginx/sites-available/default \
            /etc/nginx/nginx.conf

# Copie no site de demonstração e certifique-se de que o usuário www-data é o proprietário.
sudo cp -r site/var/www/demo /var/www
sudo chown -R www-data:www-data /var/www/demo

# Copie as configurações do site de demonstração.
sudo cp nginx/etc/nginx/sites-available/demo.conf /etc/nginx/sites-available
sudo cp nginx/etc/nginx/nginx.conf /etc/nginx

# Crie um link simbólico para a configuração de demonstração para ativá-la.
sudo ln -s /etc/nginx/sites-available/demo.conf /etc/nginx/sites-enabled

# Reinicie o nginx porque alteramos os arquivos de configuração.
sudo service nginx restart
