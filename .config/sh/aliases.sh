#!/usr/bin/env sh

# If not running interactively, don't do anything
case "$-" in
    *i*) ;;
    *)   return ;;
esac

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

if command -v trash >/dev/null 2>&1; then
    alias rm='echo "This is not the command you are looking for."; false'
else
    alias rm='rm -i'
fi

alias journalctl='sudo journalctl'
alias systemctl='sudo systemctl'

if [ "$LANG" = '' ]; then
    export LANG=en_US.UTF-8
fi

alias latexmk="latexmk -pdf"

alias mkdir="mkdir -vp"

if command -v cat >/dev/null 2>&1; then
    alias cat="bat"
fi



# export QT_STYLE_OVERRIDE=gtk
# export QT_SELECT=qt5
