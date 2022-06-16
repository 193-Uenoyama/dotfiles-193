#!/bin/bash

if [ ! -e ~/.vimrc ] ; then
  ln -s ~/dotfiles-193/vim/.vimrc ~/.vimrc
fi

if [ ! -e ~/.gvimrc ] ; then
  ln -s ~/dotfiles-193/vim/.gvimrc ~/.gvimrc
fi

if [ ! -e ~/.tmux.conf ] ; then
  ln -s ~/dotfiles-193/.tmux.conf ~/.tmux.conf
fi

if [ ! -e ~/.bash_aliases ] ; then
  ln -s ~/dotfiles-193/.bash_aliases ~/.bash_aliases
fi

if [ $SHELL = "/bin/bash" ] ; then
  if ! cat ~/.bash_profile | grep "source ~/.bash_aliases" >> /dev/null ; then
    echo "source ~/.bash_aliases" >> ~/.bash_profile
  fi
elif [ $SHELL = "/bin/zsh" ] ; then
  if ! cat ~/.zshrc | grep "source ~/.bash_aliases" >> /dev/null ; then
    echo "source ~/.bash_aliases" >> ~/.zshrc
  fi
fi

if [ ! -e ~/.cache/dein ] ; then
  # install dein
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/installer.sh
  source ~/installer.sh ~/.cache/dein
  rm ~/installer.sh
fi

if [ ! -e ~/.volta ] ; then
  # install nodejs from volta
  curl https://get.volta.sh | bash
fi

if [ ! -e ~/.tmux/plugins/tpm ] ; then
  # install tpm
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

if [ ! -e ~/.cargo ] ; then
  # install felix from cargo(rust)
  curl https://sh.rustup.rs -sSf | sh
  echo "source $HOME/.cargo/env" >> ~/.zshrc
  source $HOME/.cargo/env
  cargo install felix
fi

# font のインストール
# git clone --depth 1 https://github.com/ryanoasis/nerd-fonts
# cd nerd-fonts
# ./install.sh
# cd ..
# rm -rf nerd-fonts

