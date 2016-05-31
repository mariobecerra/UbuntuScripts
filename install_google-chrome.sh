sudo apt-get update
sudo apt-get install libgconf2-4 libnss3-1d libxss1
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
sudo apt-get -f install
