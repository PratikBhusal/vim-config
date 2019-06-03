#!/usr/bin/env sh

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then

    if [ -r ~/.dircolors ]; then
        eval "$(dircolors -b ~/.dircolors)"
    else
        eval "$(dircolors -b)"
    fi

    alias ls='ls -hN --group-directories-first --color=auto'
    # alias dir='dir --color=auto'
    # alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
else
    alias ls='ls -hN --group-directories-first'

fi

alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
# alias ls='ls --color=auto'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias journalctl='sudo journalctl'
alias systemctl='sudo systemctl'

if [ "$LANG" = '' ]; then
    export LANG=en_US.UTF-8
fi

alias latexmk="latexmk -pdf"

# export QT_STYLE_OVERRIDE=gtk
# export QT_SELECT=qt5
