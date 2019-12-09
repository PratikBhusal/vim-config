#!/usr/bin/env bash
# If not running interactively, don't do anything
case "$-" in
    *i*) ;;
    *)   return ;;
esac


# Set PS1 prompt
PS1='[\u@\h \W]\$ '

# Disable shell suspension
stty -ixon

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


if [ "$LANG" = '' ]; then
    export LANG=en_US.UTF-8
fi

# shellcheck source=.config/bash/aliases
[ -s ~/.config/bash/aliases ] && . ~/.config/bash/aliases

# If on bash version >= 4, enable going into directory using only the
# directory's name (no need to type "cd dirname")
[ "${BASH_VERSINFO[0]}" -ge 4 ] && shopt -s autocd


# Set default editor to vim
export VISUAL=vim
export EDITOR="$VISUAL"

# Direnv {{{
show_virtual_env() {
  if [ -n "$DIRENV_DIR" ]; then
    if [ -n "$VIRTUAL_ENV" ]; then
      echo "($(basename "$VIRTUAL_ENV"))"
    elif [ -n "$CONDA_DEFAULT_ENV" ]; then
      echo "($(basename "$CONDA_DEFAULT_ENV"))"
    fi
  fi
}
export -f show_virtual_env
PS1='$(show_virtual_env)'$PS1
eval "$(direnv hook bash)"
# Direnv }}}
