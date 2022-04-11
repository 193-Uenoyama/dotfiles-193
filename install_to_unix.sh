#!/bin/bash

ln -s ~/dotfiles-193/vim/.vimrc ~/.vimrc
ln -s ~/dotfiles-193/vim/.gvimrc ~/.gvimrc
 
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
