#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

for m in $(polybar --list-monitors | cut -d":" -f1); do
    WIRELESS=$(ls /sys/class/net/ | grep ^en | awk 'NR==1{print $1}') MONITOR=$m polybar
done

echo "Bars launched..."
