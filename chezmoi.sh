#install dotfiles
sudo apt install curl
cd /home/$username/.local
sudo bash -c "$(curl -fsLS chezmoi.io/get)"
sudo chezmoi init https://github.com/jamiroferrara/dotfiles
sudo chezmoi apply --force
