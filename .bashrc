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
alias e='docker run -v `pwd`:/home/project/ --rm -it editor bash'

if [ `which pbcopy` ] ; then
  export CLIP_BOARD='pbcopy'
fi

if [ `which xsel` ] ; then
  export CLIP_BOARD='xsel -bi'
fi
