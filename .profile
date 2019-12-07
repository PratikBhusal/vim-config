#!/usr/bin/env sh
# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ] && [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if command -v st 1> /dev/null 2>&1; then
   export TERMINAL="st"
fi

export PATH=$PATH:$HOME/.texlive/2019/bin/x86_64-linux/
export MANPATH=$MANPATH:$HOME/.texlive/2019/texmf-dist/doc/man/
export INFOPATH=$INFOPATH:$HOME/.texlive/2019/texmf-dist/doc/info/
# export TEXMFCNF="$HOME/.texlive/2019/:"

# Add python3 stuff
export PATH=$PATH:$(python3 -m site --user-base)/bin

# Add rust cargo packages
export PATH=$PATH:~/.cargo/bin
