#!/bin/sh

# script for leavig my desktop in clean state meaning killing all precesess
# when I'm some some cpu intensive stuff or using some kind of fullscreen
# like games and removes top padding where polybar normaly is :)

killall mpd
sleep 0.1
killall picom
sleep 0.1
killall polybar
sleep 0.1
bspc config top_padding 0
bspc config bottom_padding 0
