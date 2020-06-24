#!/bin/dash

# kill section for case that you will reset bspwm
killall floating.sh
sleep 0.1
killall polybar
sleep 0.1
killall sxhkd
sleep 0.1
killall picom
sleep 0.1
killall xfce4-power-manager

# programs section
mouse_detect.sh &
sleep 0.1
xfce4-power-manager &
sleep 0.1
floating.sh &
sleep 0.1
feh --no-fehbg --bg-scale ~/Pictures/wallpaper.jpg &
sleep 0.1
polybar -r top &
sleep 0.1
sxhkd -c ~/.config/sxhkd/sxhkdrc &
sleep 0.1
picom --experimental-backends &
sleep 0.1
