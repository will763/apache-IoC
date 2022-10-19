#!/bin/bash

echo "updating system..."

apt-get update
apt-get upgrade -y

echo "installing packges..."

apt-get install unzip -y
apt-get install apache2 -y

cd /tmp

echo "download website..."

wget https://github.com/will763/challenge/archive/refs/heads/main.zip
unzip main.zip


echo "copy files to /var/www/html"

cd challenge-main
cp -R * /var/www/html  --remove-destination

echo "The end"
