#!/bin/sh

killall dunst
killall /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
killall dxhd
killall polybar
killall picom
bspc quit
