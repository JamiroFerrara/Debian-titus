#install dotfiles
apt install curl
cd /home/$username/.local
bash -c "$(curl -fsLS chezmoi.io/get)"
chezmoi init https://github.com/jamiroferrara/dotfiles
chezmoi apply --force
