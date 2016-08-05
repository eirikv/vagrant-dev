#!/bin/bash

echo -e "\n**** Installing Google Chrome"
sudo sh -c "echo 'deb http://dl.google.com/linux/chrome/deb/ stable main' >> /etc/apt/sources.list.d/chrome.list"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y google-chrome-stable
sudo sed -i 's/google\-chrome\-stable/google\-chrome\-stable \-\-disable-gpu/g' /usr/share/applications/google-chrome.desktop
