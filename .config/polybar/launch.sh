#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

read -t 2 -p "waiting for initial xrand config\n"

# Launch polybars
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do  # check all connected screens
    if [ $m == 'eDP-1-1' ] # egpu is connected
    then
        # Things to do when egpu is connected
	xrandr --output DP-1 --primary --auto --output DP-3 --left-of DP-1 --auto --output DP-5 --right-of DP-1 --rotate normal --auto --output eDP-1-1 --below DP-1 --auto # setup 4 screens
        # set wallpapers
        #feh --bg-scale ~/Pictures/wallpapers/w1.png --bg-scale ~/Pictures/wallpapers/w2.jpg --bg-scale ~/Pictures/wallpapers/w3.jpg --bg-scale ~/scripts/spacesurf.png
	read -t 2 -p "waiting for new xrand to settle\n"
        for k in $(xrandr --query | grep " connected" | cut -d" " -f1); do  # loop again connected screens
          if [ $k == 'eDP-1-1' ]  # laptop screen
          then
	    MONITOR=$m polybar --reload archbar-laptop -c ~/.config/polybar/config &
          elif [ $k == 'DP-1' ]  # top central monitor
          then
	    MONITOR=$k polybar --reload archbar-aux -c ~/.config/polybar/config &
          else
	    MONITOR=$k polybar --reload archbar-none -c ~/.config/polybar/config &
          fi
        done
    elif [ $m == 'eDP-1' ]  # no egpu connected
    then
        # Things to do when laptop alone
	MONITOR=$m polybar --reload archbar-laptop -c ~/.config/polybar/config &
    fi
  done

#else  # any other screen connected which is not xrandr type
#  polybar --reload archbar-none -c ~/.config/polybar/config &
fi

echo "Bars launched..."
