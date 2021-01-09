#!/bin/bash

sudo apt update
sudo apt upgrade

# Installing Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt update
sudo apt install google-chrome-stable

# Installing Codeblocks
sudo apt install codeblocks

# Installing compilers
sudo apt install g++
sudo apt install openjdk-11-jdk-headless
sudo apt install fpc

# Installing PyCharm
sudo snap install pycharm-community --classic

# Installing CLion
sudo snap install clion --classic

# Installing Sublime Text 3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-add-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt install sublime-text

# Installing Vim
sudo apt install vim

# Installing IntelliJ IDEA
sudo snap install intellij-idea-community --classic

# Installing Eclipse
sudo snap install --classic eclipse

# Install gnome-tweak
sudo apt install gnome-tweak-tool
