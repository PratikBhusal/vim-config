#!/usr/bin/env sh

mkchdir() {
    mkdir -vp "$1" && cd "$1" || return
}
