#!/bin/bash

username=$(id -u -n 1000)
builddir=$(pwd)

# Appearance pacakges

#Ms-fonts
sudo apt install -y ttf-mscorefonts-installer

# Layan Cursors
mkdir -p $HOME/build
cd "$HOME/build"
git clone https://github.com/vinceliuice/Layan-cursors
cd Layan-cursors
sudo ./install.sh

#Chezmoi
cd /home/$username/.local
wget chezmoi.io/get
bash ./get
rm -f ./get

#VimPlug

bash -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'