#!/bin/bash

echo -e "\n**** Installing Google Chrome"
sudo sh -c "echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' > /etc/apt/sources.list.d/chrome.list"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y google-chrome-stable
sudo sed -i 's/google\-chrome\-stable/google\-chrome\-stable \-\-disable-gpu/g' /usr/share/applications/google-chrome.desktop

echo -e "\n**** Installing Sublime Text"
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install -y sublime-text-installer

echo -e "\n**** Installing Source Code Pro font"
cd /tmp
wget https://github.com/adobe-fonts/source-code-pro/archive/2.010R-ro/1.030R-it.zip
unzip 1.030R-it.zip
mkdir -p ~/.fonts
cp source-code-pro-2.010R-ro-1.030R-it/OTF/*.otf /usr/local/share/fonts/
fc-cache -f -v

echo -e "\n**** Installing node"
sudo apt-get install -y npm
sudo npm install -g n
sudo n latest

echo -e "\n**** Enable workspaces"
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 2
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize 2
