#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u "$(id -u)" polybar >/dev/null; do
    sleep 1
done

# Launch bar1 and bar2
primary="$(polybar --list-monitors | grep primary | cut -d ':' -f1)"
for m in $(polybar --list-monitors | cut -d':' -f1); do
    if [ "${primary}" = "${m}" ]; then
        export TRAY_ENABLE="right"
    else
        export TRAY_ENABLE=""
    fi
    MONITOR=${m} polybar -r top &
    MONITOR=${m} polybar -r bottom &
done

echo "Bars launched..."
