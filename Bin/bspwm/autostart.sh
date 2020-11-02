#!/bin/sh

# kill section for case that you will reset bspwm
killall floating.sh
sleep 0.1
killall sxhkd
sleep 0.1
killall picom
sleep 0.1
killlemonade
sleep 0.1
killall slideshow
sleep 0.1

# programs section
floating.sh &
sleep 0.1
mouse_detect.sh &
sleep 0.1
sxhkd -c ~/.config/sxhkd/sxhkdrc &
sleep 0.1
picom --experimental-backends &
sleep 0.1
slideshow &
sleep 0.1
launchlemonade &
