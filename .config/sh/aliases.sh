#!/usr/bin/env sh

# If not running interactively, don't do anything
case "$-" in
    *i*) ;;
    *)   return ;;
esac

# enable color support of ls and also add handy aliases
if command -v dircolors >/dev/null 2>&1 ; then

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
alias cp='cp -i'
alias mv='mv -i'

alias journalctl='sudo journalctl'
alias systemctl='sudo systemctl'

if [ "$LANG" = '' ]; then
    export LANG=en_US.UTF-8
fi

alias latexmk="latexmk -pdf"

alias mkdir="mkdir -vp"

if command -v bat >/dev/null; then
    alias cat="bat"
elif command -v batcat >/dev/null; then
    alias cat="batcat"
fi
command -v i3lock >/dev/null 2>&1 && alias i3lock="i3lock -c 202020"
command -v uxterm >/dev/null 2>&1 && alias xterm="uxterm"
command -v dragon-drag-and-drop >/dev/null 2>&1 && alias dragon="dragon-drag-and-drop"
command -v ncdu >/dev/null 2>&1 && alias du="ncdu"
command -v xdg-open >/dev/null 2>&1 && alias open="xdg-open"


if command -v ipython >/dev/null; then
    interactive_python () {
        if [ -z "$1" ]; then
            ipython
        else
            command python "$@"
        fi
    }
    alias python=interactive_python
    alias python3=interactive_python
fi




# if command -v vim >/dev/null; then
#     alias vi="vim"
# elif command -v nvim >/dev/null; then
#     alias vi="nvim"
# fi

# export QT_STYLE_OVERRIDE=gtk
# export QT_SELECT=qt5
