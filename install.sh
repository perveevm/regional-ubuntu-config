#!/bin/bash

sudo apt update
sudo apt upgrade -y

# Installing Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt update
sudo apt install google-chrome-stable -y

# Installing compilers
sudo apt install g++ -y
sudo apt install openjdk-11-jdk-headless -y
sudo apt install fpc -y

# Installing JetBrains IDEs
sudo snap install pycharm-community --classic
sudo snap install clion --classic
sudo snap install intellij-idea-community --classic

# Installing text editors
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-add-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt install sublime-text -y
sudo apt install vim -y
sudo apt install geany -y

# Installing Codeblocks
sudo apt install codeblocks -y

# Installing Eclipse
sudo snap install --classic eclipse

# Install gnome-tweak
sudo apt install gnome-tweak-tool

# Modifying /etc/hosts
sudo su
echo "188.124.47.64 perveevm.ru www.perveevm.ru" >> /etc/hosts
echo "188.124.47.64 ejudge.strategy48.ru www.ejudge.strategy48.ru" >> /etc/hosts
echo "77.234.215.132 pcms.itmo.ru www.pcms.itmo.ru" >> /etc/hosts
exit

# Modifying /etc/nsswitch.conf in semi-automatic mode
sudo vim /etc/nsswitch.conf

# Disabling DNS
sudo systemctl stop systemd-resolved
sudo systemctl disable systemd-resolved