#!/bin/bash


# Copie no site hello e certifique-se de que o usuário www-data é o proprietário.
sudo cp -r site/var/www/hello /var/www
sudo chown -R www-data:www-data /var/www/hello


# Duplique a configuração de demonstração como um novo arquivo de configuração hello
sudo cp /etc/nginx/sites-available/demo.conf \
     /etc/nginx/sites-available/hello.conf


# Faça um link simbólico para a segunda configuração de demonstração para ativá-la.
sudo ln -s /etc/nginx/sites-available/hello.conf /etc/nginx/sites-enabled

# Restart nginx 
sudo service nginx restart
