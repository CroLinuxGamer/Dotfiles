#!/bin/dash

# this script is literally just a reverse of clean.sh
# where it just starts everything back again

mpd &
sleep 0.1
picom --experimental-backends &
sleep 0.1
polybar -r top &
sleep 0.1
transmission-daemon &
sleep 0.1
appimagelauncherd &
sleep 0.1
appimagelauncherfs &
sleep 0.1
xfce4-power-manager &
sleep 0.1
bspc config top_padding 21
