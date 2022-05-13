#!/bin/bash

ln -s ~/dotfiles-193/vim/.vimrc ~/.vimrc
ln -s ~/dotfiles-193/vim/.gvimrc ~/.gvimrc
ln -s ~/dotfiles-193/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles-193/.bash_aliases ~/.bash_aliases
echo "source ~/.bashrc" >> ~/.bash_profile
echo "source ~/.bash_aliases" >> ~/.bashrc

# install dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/installer.sh
source ~/installer.sh ~/.cache/dein
rm ~/installer.sh

# install volta
curl https://get.volta.sh | bash

# install tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# font のインストール
# git clone --depth 1 https://github.com/ryanoasis/nerd-fonts
# cd nerd-fonts
# ./install.sh
# cd ..
# rm -rf nerd-fonts

