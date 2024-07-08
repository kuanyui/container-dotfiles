# This is the ~/.bashrc inside the container

PS1='\[\e[1;32m\]\u@\h\[\e[m\]:\[\e[1;34m\]\W\[\e[1;33m\]\$\[\e[m\] '

if [[ $- =~ i ]]; then
    bind 'TAB:menu-complete'
    bind '"\e[Z":menu-complete-backward'
    bind 'set show-all-if-ambiguous on'

    # completion for Makefile target
    complete -W "\`grep -oE '^[a-zA-Z0-9_.-]+:([^=]|$)' ?akefile | sed 's/[^a-zA-Z0-9_.-]*$//'\`" make
fi

alias sz="source ~/.bashrc"
alias ll='ls -al --color=auto '
alias ls='ls --color=auto '

alias sc="sudo systemctl"
alias jc="sudo journalctl"
alias jc-clear="sudo journalctl --vacuum-time=5d"   #  Delete journal logs which are older than 5 days

alias nvv='nvm ls'
alias nv='nvm version'

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

export HISTCONTROL=ignorespace
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

PATH=/home/user/appimages/imagemagick/usr/bin/:${PATH}
