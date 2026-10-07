#! /bin/bash

killall -q polybar
# wait for the old bars to exit, otherwise $mod+Shift+p can leave duplicates
while pgrep -u "$UID" -x polybar >/dev/null; do sleep 0.2; done

if type "xrandr" >/dev/null 2>&1; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload mybar &
  done
else
  polybar --reload mybar &
fi
