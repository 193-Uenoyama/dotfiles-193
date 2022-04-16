#!/bin/bash

ln -s ~/dotfiles-193/vim/.vimrc ~/.vimrc
ln -s ~/dotfiles-193/vim/.gvimrc ~/.gvimrc
ln -s ~/dotfiles-193/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles-193/.bashrc ~/.bashrc
 
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
rm ./installer.sh

font のインストール
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts
./install.sh
cd ..
rm -rf nerd-fonts

fzf のインストール
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

