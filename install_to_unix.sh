#!/bin/bash

ln -s ~/simple_vimfiles/.vimrc ~/.vimrc
ln -s ~/simple_vimfiles/.gvimrc ~/.gvimrc
 
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
