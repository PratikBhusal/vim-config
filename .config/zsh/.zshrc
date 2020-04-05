#!/usr/bin/env zsh

autoload -U colors && colors

# shellcheck source=.config/zsh/aliases.zsh
[ -s ~/.config/zsh/aliases.zsh ] && . ~/.config/zsh/aliases.zsh


# History in cache directory:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

# Enable command auto-completion
autoload -Uz compinit
zmodload zsh/complist
compinit

# Arrow-key driven interface
zstyle ':completion:*' menu select

# Have same colors as the ls command for files
# eval "$(dircolors)" # Do not need to call if done in aliases.zsh file
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# auto-completion for aliases
setopt COMPLETE_ALIASES


setopt autocd

# # Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Rehash every so oftern
zstyle ':completion:*' rehash true

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'left' vi-backward-char
bindkey -M menuselect 'down' vi-down-line-or-history
bindkey -M menuselect 'up' vi-up-line-or-history
bindkey -M menuselect 'right' vi-forward-char
# Fix backspace bug when switching modes
bindkey "^?" backward-delete-char

export KEYTIMEOUT=1

# # Change cursor shape for different vi modes.
# function zle-keymap-select {
#   if [[ ${KEYMAP} == vicmd ]] ||
#      [[ $1 = 'block' ]]; then
#     echo -ne '\e[1 q'

#   elif [[ ${KEYMAP} == main ]] ||
#        [[ ${KEYMAP} == viins ]] ||
#        [[ ${KEYMAP} = '' ]] ||
#        [[ $1 = 'beam' ]]; then
#     echo -ne '\e[5 q'
#   fi
# }
# zle -N zle-keymap-select

# zle-line-init() {
#     zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
#     echo -ne "\e[5 q"
# }
# zle -N zle-line-init

# # Use beam shape cursor on startup.
# echo -ne '\e[5 q'
# # Use beam shape cursor for each new prompt.
# preexec() { echo -ne '\e[5 q' ;}

# Load fzf default settings
[ -f ~/.fzf.zsh ] && . ~/.fzf.zsh

# zinit installer {{{
    if [[ ! -f $HOME/.config/zsh/.zinit/bin/zinit.zsh ]]; then
        print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
        command mkdir -p "$HOME/.config/zsh/.zinit" && command chmod g-rwX "$HOME/.config/zsh/.zinit"
        command git clone https://github.com/zdharma/zinit "$HOME/.config/zsh/.zinit/bin" && \
            print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
            print -P "%F{160}▓▒░ The clone has failed.%f%b"
    fi

    source "$HOME/.config/zsh/.zinit/bin/zinit.zsh"
    autoload -Uz _zinit
    (( ${+_comps} )) && _comps[zinit]=_zinit

    # Load a few important annexes, without Turbo
    # (this is currently required for annexes)
    zinit light-mode for \
        zinit-zsh/z-a-patch-dl \
        zinit-zsh/z-a-as-monitor \
        zinit-zsh/z-a-bin-gem-node
# zinit installer }}}

# shellcheck source=.config/zsh/plugins.zsh
[ -s ~/.config/zsh/plugins.zsh ] && . ~/.config/zsh/plugins.zsh
