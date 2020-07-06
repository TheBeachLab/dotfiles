#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [ $m == 'DP-1' ] # center monitor
    then
	MONITOR=$m polybar --reload archbar-center -c ~/.config/polybar/config &
    elif [ $m == 'DP-3' ]
    then
	MONITOR=$m polybar --reload archbar-left -c ~/.config/polybar/config &
    else
	MONITOR=$m polybar --reload archbar-right -c ~/.config/polybar/config &
    fi
  done
else
  polybar --reload archbar-center -c ~/.config/polybar/config &
fi

echo "Bars launched..."
