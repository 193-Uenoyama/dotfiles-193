#!/bin/bash

# shopt -s expand_aliases

alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'
alias ll='ls -al'

alias d='docker'
alias dc='docker-compose'
alias m='make'
alias g='git'
alias vi='vim -u NONE -N'

alias e='reservVimContainer && docker exec -u `id -u`:`id -g` -it editor bash'
alias eup='reservVimContainer && docker exec -u `id -u`:`id -g` -it editor bash'
alias edown='docker stop editor && docker rm editor'

function reservVimContainer() {
  vim_container_id=`docker ps --filter "name=editor" -q`
  if [ -z $vim_container_id ] ; then
    docker run -v `pwd`:/home/project/ -v `echo $HOME`/.cache/dein:/home/editor/.cache/dein --name editor -it -d editor bash
    docker exec editor groupadd -g $(id -g) -o editor
    docker exec editor useradd -u $(id -u) -g $(id -g) -m -d "/home/editor" editor
    docker exec editor chown -R $(id -u):$(id -g) /home/editor
  fi

  dein_dirs=( `ls ~/.cache/dein | xargs` )
  if [ ${#dein_dirs[*]} -eq 0 ] ; then
    docker exec -u `id -u`:`id -g` editor /home/editor/dein_installer.sh
  fi
}

