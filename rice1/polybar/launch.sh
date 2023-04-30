#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar myworkspaces 2>&1 | tee -a /tmp/polybar1.log & disown
polybar mysystem 2>&1 | tee -a /tmp/polybar2.log & disown
#polybar myapps 2>&1 | tee -a /tmp/polybar2.log & disown
#polybar mymenu 2>&1 | tee -a /tmp/polybar2.log & disown
polybar mymusic 2>&1 | tee -a /tmp/polybar2.log & disown
#polybar date 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Bars launched..."
