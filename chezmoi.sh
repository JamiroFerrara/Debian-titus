#install dotfiles
apt install curl
cd /home/$username/.local
bash -c "$()"

cd /home/$username/.local
wget chezmoi.io/get
bash ./get
rm -f ./get

chezmoi init https://github.com/jamiroferrara/dotfiles
chezmoi apply --force -v
