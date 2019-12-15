#!/usr/bin/env sh

for term in "$TERMINAL" x-terminal-emulator st xfce4-terminal uxterm xterm; do
    if command -v "$term" > /dev/null 2>&1; then
        CMD="$term $*"
        break
    fi
done

[ ! "$CMD" ] && echo 'No terminal emulator found! Install one please.' && exit 1

if command -v xcwd > /dev/null 2>&1; then
    cd "$(xcwd)" && $CMD
else
    # i3 thread: https://faq.i3wm.org/question/150/how-to-launch-a-terminal-from-here/?answer=152#post-id-152
    CWD=''

    # Get window ID
    ID=$(xdpyinfo | grep focus | cut -f4 -d " ")

    # Get PID of process whose window this is
    PID=$(xprop -id "$ID" | grep -m 1 PID | cut -d " " -f 3)

    # Get last child process (shell, vim, etc)
    if [ -n "$PID" ]; then
        TREE=$(pstree -lpA "$PID" | tail -n 1)
        PID=$(echo "$TREE" | awk -F'---' '{print $NF}' | sed -re 's/[^0-9]//g')

        # If we find the working directory, run the command in that directory
        if [ -e "/proc/$PID/cwd" ]; then
          CWD=$(readlink /proc/"$PID"/cwd)
        fi
    fi
    if [ -n "$CWD" ]; then
        cd "$CWD" && $CMD
    else
        $CMD
    fi
fi
