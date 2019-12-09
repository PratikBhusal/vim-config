#!/usr/bin/env sh

prepend_to_path() {
  if [ -d "$1" ]; then
    case ":$PATH:" in
      *":$1:"*) :;; # already there
      *) PATH="$PATH:$1";;
    esac
  fi
}

append_to_path() {
  if [ -d "$1" ]; then
    case ":$PATH:" in
      *":$1:"*) :;; # already there
      *) PATH="$1:$PATH";;
    esac
  fi
}

cleanup_path() {
    echo -n $1 | awk -v RS=: '!($0 in a) {a[$0]; printf("%s%s", length(a) > 1 ? ":" : "", $0)}'
}
