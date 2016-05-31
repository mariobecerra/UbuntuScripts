#! /bin/bash

#Install  R Studio for Ubuntu (you have to specify the version as a parameter when executing this script)
#2016-05-30
# Versions: 
# 15.10: wily
# 16.04: xenial
# Execute as root
#   $ sudo su
#   # ./install_r.sh xenial
set -e
set -v
#sudo echo "LC_ALL=en_US.UTF-8" >> /etc/environment
if test -z `grep "LC_ALL=en_US.UTF-8" /etc/environment`
then
	echo "LC_ALL=en_US.UTF-8" | sudo tee -a /etc/environment
fi
if test -z `grep "LANG=en_US.UTF-8" /etc/environment`
then
	echo "LANG=en_US.UTF-8" | sudo tee -a /etc/environment
fi
#sudo echo "deb http://cran.itam.mx/bin/linux/ubuntu quantal/" >> /etc/apt/sources.list
if test -z `grep "deb http://cran.itam.mx/bin/linux/ubuntu $1/" /etc/apt/sources.list`
then
	echo "deb http://cran.itam.mx/bin/linux/ubuntu $1/" | sudo tee -a /etc/apt/sources.list
fi
gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -
sudo apt-get update
sudo apt-get install build-essential libcurl4-openssl-dev libxml2-dev r-base gdebi-core -y
echo "Happy R coding :D"