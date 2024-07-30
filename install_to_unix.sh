#!/bin/bash
dotfile_dir_path=~/dotfiles-193/
dotfile_vim_path=${dotfile_dir_path}/vim
dotfile_submodules_path=${dotfile_dir_path}/submodules

if [ ! -e ~/.vimrc ] ; then
  ln -s ${dotfile_vim_path}/vim/.vimrc ~/.vimrc
fi

if [ ! -e ~/.gvimrc ] ; then
  ln -s ${dotfile_vim_path}/vim/.gvimrc ~/.gvimrc
fi

if [ ! -e ~/.tmux.conf ] ; then
  ln -s ${dotfile_vim_path}/.tmux.conf ~/.tmux.conf
fi

if [ ! -e ~/.bash_aliases ] ; then
  ln -s ${dotfile_vim_path}/.bash_aliases ~/.bash_aliases
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
  echo "install dein"
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/installer.sh
  source ~/installer.sh ~/.cache/dein
  rm ~/installer.sh
fi

if [ ! -e ~/.volta ] ; then
  echo "install volta"
  curl https://get.volta.sh | bash
fi

# if [ ! -e ~/.cargo ] ; then
#   echo "install felix from cargo(rust)"
#   curl https://sh.rustup.rs -sSf | sh
#   echo "source $HOME/.cargo/env" >> ~/.zshrc
#   source $HOME/.cargo/env
#   cargo install felix
# fi

if [ ! -e ~/.tmux/plugins/tpm ] ; then
  echo "install tpm"
  ln -s ${dotfile_submodules_path}/tpm ~/.tmux/plugins/tpm
fi

if [ ! -e ~/.fzf ] ; then
  echo "install fzf"
  ln -s ${dotfile_submodules_path}/fzf ~/.fzf
  ~/.fzf/install
fi

# font のインストール
# git clone --depth 1 https://github.com/ryanoasis/nerd-fonts
# cd nerd-fonts
# ./install.sh
# cd ..
# rm -rf nerd-fonts

