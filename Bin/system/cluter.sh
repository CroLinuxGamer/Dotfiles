#!/bin/dash

# this script is literally just a reverse of clean.sh
# where it just starts everything back again

mpd &
sleep 0.1
picom --experimental-backends &
sleep 0.1
polybar -r top &
sleep 0.1
polybar -r bottom &
sleep 0.1
bspc config top_padding 20
bspc config bottom_padding 20

