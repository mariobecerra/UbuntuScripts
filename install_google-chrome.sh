#!/bin/bash

# MBC 5 feb 2016
# Ejecutar terminal (Ctrl+Alt+T)
# Ir al directorio donde está guardado este archivo (Ej: cd ~/Desktop) (~ manda a home)
# Cambiarle los permisos al archivo para poder ejecutar (sudo chmod 777 install_google-chrome.sh)
# Ejecutar archivo (./install_google-chrome.sh)

sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y google-chrome-stable
