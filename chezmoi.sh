username=$(id -u -n 1000)
builddir=$(pwd)

cd /home/$username/.local
wget chezmoi.io/get
bash ./get
rm -f ./get

