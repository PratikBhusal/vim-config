#!/usr/bin/env bash

dotfiles() {
    git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}

if [[ -x "$(command -v git)" && -x "$(command -v rsync)" &&  ! -d $HOME/.dotfiles ]]; then
    git clone --separate-git-dir=$HOME/.dotfiles git@github.com:PratikBhusal/dotfiles.git tmpdotfiles

    rsync --recursive --verbose --links --exclude '.git' tmpdotfiles/ $HOME/
    rm -r tmpdotfiles

    dotfiles config --local status.showUntrackedFiles no
elif [[ ! -x "$(command -v git)" || ! -x "$(command -v rsync)" ]]; then
    echo "please install git and rsync before trying to install dotfiles"
fi
