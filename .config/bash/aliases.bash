#!/usr/bin/env sh
# Keep it POSIX-compliant until I have no reason to

# shellcheck source=../sh/aliases.sh
[ -s ~/.config/sh/aliases.sh ] && . ~/.config/sh/aliases.sh

# nnn file manager
if [ "$(command -v nnn)" ] && [ -s ~/.config/nnn/misc/quitcd.bash ]; then
    . ~/.config/nnn/misc/quitcd.bash
    alias nnn="nnncd -d"
fi
