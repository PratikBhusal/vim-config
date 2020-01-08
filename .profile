#!/usr/bin/env sh
# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022


# shellcheck source=.config/sh/functions.sh
[ -r ~/.config/sh/functions.sh ] && . ~/.config/sh/functions.sh

# if running bash
if [ -n "$BASH_VERSION" ] && [ -f "$HOME/.bashrc" ]; then
    # shellcheck source=.bashrc
    . "$HOME/.bashrc"
fi

# set PATH so it includes user's private bin if it exists
append_to_path "$HOME/bin"

# set PATH so it includes user's private bin if it exists
prepend_to_path "$HOME/.local/bin"

command -v st      1> /dev/null 2>&1 && export TERMINAL="st"
command -v less    1> /dev/null 2>&1 && export PAGER="less"
command -v pyenv   1> /dev/null 2>&1 && eval   "$(pyenv init -)"
command -v firefox 1> /dev/null 2>&1 && export BROWSER="firefox"
command -v i3lock  1> /dev/null 2>&1 && export LOCKER="i3lock"

# Add texlive
if [ -d "$HOME/.texlive/2019/" ]; then
    append_to_path "$HOME/.texlive/2019/bin/x86_64-linux/"
    MANPATH=$MANPATH:$HOME/.texlive/2019/texmf-dist/doc/man/
    INFOPATH=$INFOPATH:$HOME/.texlive/2019/texmf-dist/doc/info/
    # export TEXMFCNF="$HOME/.texlive/2019/:"
fi

# Add rust cargo packages
# shellcheck source=.config/cargo/bin
append_to_path "$HOME/.cargo/bin"

PATH=$(cleanup_path "$PATH")
MANPATH=$(cleanup_path "$MANPATH")
INFOPATH=$(cleanup_path "$INFOPATH")

# startx should always be the last line
[ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ] && startx
