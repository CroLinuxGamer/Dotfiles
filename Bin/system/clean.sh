#!/bin/dash
# change it to #!/bin/sh if you are on debian based distro

# script for leavig my desktop in clean state meaning killing all precesess
# when I'm some some cpu intensive stuff or using some kind of fullscreen
# like games and removes top padding where polybar normaly is :)

pkill mpd
sleep 0.1
pkill picom
sleep 0.1
pkill lemonbar
sleep 0.1
pkill panel-top
sleep 0.1
pkill panel-bottom
sleep 0.1
bspc config top_padding 0
bspc config bottom_padding 0
sxhkd &
floating.sh &

