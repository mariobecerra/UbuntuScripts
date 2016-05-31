#### Hay problemas con los paquetes de apt-get después de instalar de esta forma.
# Los solucioné instalando los paquetes que tenían problema, y haciendo apt-get update

wget https://download1.rstudio.org/rstudio-0.99.902-amd64.deb
sudo dpkg -i --force-depends rstudio-0.99.902-amd64.deb
