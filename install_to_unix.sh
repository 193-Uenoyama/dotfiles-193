#!/bin/bash

ln -s ~/dotfiles-193/vim/.vimrc ~/.vimrc
ln -s ~/dotfiles-193/vim/.gvimrc ~/.gvimrc
ln -s ~/dotfiles-193/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles-193/.bash_profile ~/.bash_profile

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/installer.sh
~/installer.sh ~/.cache/dein
rm ~/installer.sh

# font のインストール
# git clone --depth 1 https://github.com/ryanoasis/nerd-fonts
# cd nerd-fonts
# ./install.sh
# cd ..
# rm -rf nerd-fonts

