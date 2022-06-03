#install dotfiles
apt install curl
cd /home/$username/.local
bash -c "$(curl -fsLS chezmoi.io/get)"
chezmoi init https://github.com/jamiroferrara/dotfiles
chezmoi apply --force

#install brave browser
sudo apt install apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

#install nvim
mkdir Downloads
cd /home/$username/Downloads
wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
mv /home/$username/Downloads/nvim-linux64/bin/nvim /usr/bin

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
