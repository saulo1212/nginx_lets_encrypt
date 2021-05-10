#!/bin/bash

# UPDATE November 2019:
#   On older distros of Linux you may get a 'python': No such file or directory
#   error. This installs Python 2.7x which fixes that issue.
sudo apt-get install python-dev

# Copy over Let's Encrypt related scripts and make them executable.
sudo cp ~/lets-encrypt/usr/local/bin/* /usr/local/bin
sudo chmod +x /usr/local/bin/acme-tiny.py /usr/local/bin/issue-certificate.sh
