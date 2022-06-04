username=$(id -u -n 1000)
builddir=$(pwd)

#install nvim
mkdir /home/stiwie/Downloads
cd /home/stiwie/Downloads
wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
mv /home/stiwie/Downloads/nvim-linux64/bin/nvim /usr/bin

bash -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
