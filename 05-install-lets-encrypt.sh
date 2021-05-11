#!/bin/bash

# ATUALIZAÇÃO de novembro de 2019:
# Em distros mais antigas do Linux, você pode obter um 'python': nenhum arquivo ou diretório
# erro. Isso instala o Python 2.7x, que corrige o problema.
sudo apt-get install python-dev


# Copie o Let's Encrypt scripts relacionados e torne-os executáveis.
sudo cp lets-encrypt/usr/local/bin/* /usr/local/bin
sudo chmod +x /usr/local/bin/acme-tiny.py /usr/local/bin/issue-certificate.sh
