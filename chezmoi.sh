username=$(id -u -n 1000)
builddir=$(pwd)

cd /home/$username/.local
wget chezmoi.io/get
bash ./get
rm -f ./get

bash chezmoi init https://github.com/jamiroferrara/dotfiles
bash chezmoi apply --force -v
exit
exit
