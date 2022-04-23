alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'

alias d='docker'
alias m='make'
alias g='git'

if [ `which pbcopy` ] ; then
  alias cb='pbcopy'
  alias tmux-cp=''
fi

if [ `which xsel` ] ; then
  alias cb='xsel --clipboard --input'
  alias tmux-cp='tmux save-buffer - | xsel --clipboard --input'
fi
