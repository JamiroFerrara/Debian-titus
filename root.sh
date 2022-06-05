#!/bin/bash

username=$(id -u -n 1000)
builddir=$(pwd)

# Change Debian to SID Branch
cp /etc/apt/sources.list /etc/apt/sources.list.bak
cp sources.list /etc/apt/sources.list 
cp sddm.conf /etc/
cp .bashrc /home/$username/

# Add Custom Titus Rofi Deb Package
dpkg -i 'Custom Packages/rofi_1.7.0-1_amd64.deb'

# Update packages list
apt update

# Add base packages
apt install unzip picom ripgrep bspwm polybar sddm rofi kitty thunar flameshot neofetch sxhkd git lxpolkit lxappearance xorg curl snapd arandr -y
apt install papirus-icon-theme lxappearance fonts-noto-color-emoji fonts-firacode fonts-font-awesome libqt5svg5 qml-module-qtquick-controls mpv -y

# Download Nordic Theme
cd /usr/share/themes/
git clone https://github.com/EliverLara/Nordic.git

# Fira Code Nerd Font variant needed
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/FiraCode.zip
unzip FiraCode.zip -d /usr/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/Meslo.zip
unzip Meslo.zip -d /usr/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip
unzip Iosevka.zip -d /usr/share/fonts

fc-cache -vf

cd $builddir
mkdir -p /home/$username/.config
cp .Xresources /home/$username
cp .Xnord /home/$username
cp -R dotfiles/* /home/$username/.config/
chown -R $username:$username /home/$username

source $builddir/installbrave.sh

#install nvim
sudo apt-get install -y neovim
mkdir /home/stiwie/Downloads
cd /home/stiwie/Downloads
wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
mv /home/stiwie/Downloads/nvim-linux64/bin/nvim /usr/bin

apt install -y nodejs
apt-get install -y npm

npm install --location=global yarn
