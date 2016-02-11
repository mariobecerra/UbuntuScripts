#! /bin/bash

# MBC 5 feb 2016
# Instalar Sublime Text (Editor de texto)
# Ejecutar terminal (Ctrl+Alt+T)
# Ir al directorio donde está guardado este archivo (Ej: cd ~/Desktop) (~ manda a home)
# Cambiarle los permisos al archivo para poder ejecutar (sudo chmod 777 install_sublime.sh)
# Ejecutar archivo (./install_sublime.sh)

sudo add-apt-repository ppa:webupd8team/sublime-text-2
sudo apt-get update
sudo apt-get install sublime-text

# Create a symbolic link to use at the command line issue the following command at the terminal:
sudo ln -s /usr/bin/subl /usr/local/bin/sublime

