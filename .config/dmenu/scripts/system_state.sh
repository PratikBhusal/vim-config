#!/usr/bin/env sh

PROMPT="What state do you want the computer to be in?"
LOCKER="i3lock -c 202020"


confirm() {
    [ "$( printf "No\nYes" | dmenu -i -p "Are you sure you want to $1?")" = "Yes" ] && return 0
}


OPTION=$(printf "cancel\nlock\nlogout\nsuspend\nhibernate\nreboot\nshutdown" | dmenu -i -p "$PROMPT")
case "$OPTION"  in
    cancel    ) ;;
    lock      ) $LOCKER;;
    logout    ) killall Xorg;;
    suspend   ) $LOCKER && systemctl suspend;;
    hibernate ) $LOCKER && systemctl hibernate;;
    reboot    ) confirm "$OPTION" && systemctl reboot;;
    shutdown  ) confirm "$OPTION" && systemctl poweroff -i;;
esac
