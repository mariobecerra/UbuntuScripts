#! /bin/bash

# MBC 5 feb 2016
# Ejecutar terminal (Ctrl+Alt+T)
# Ir al directorio donde está guardado este archivo (Ej: cd ~/Desktop) (~ manda a home)
# Cambiarle los permisos al archivo para poder ejecutar (sudo chmod 777 install_dropbox.sh)
# Ejecutar archivo (./install_dropbox.sh)

cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd
sudo apt-get install nautilus-dropbox