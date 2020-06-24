#!/bin/dash

# script for leavig my desktop in clean state meaning killing all precesess
# when I'm some some cpu intensive stuff or using some kind of fullscreen
# like games and removes top padding where polybar normaly is :)

killall mpd
sleep 0.1
killall picom
sleep 0.1
killall polybar
sleep 0.1
killall transmission-daemon
sleep 0.1
killall appimagelauncher
sleep 0.1
killall appimagelauncherfs
sleep 0.1
killall xfce4-power-manager
sleep 0.1
bspc config top_padding 0
