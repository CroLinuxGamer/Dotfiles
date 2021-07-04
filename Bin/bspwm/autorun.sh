#!/usr/bin/sh

feh --bg-fill --no-fehbg ~/Pictures/wallpapers/wallpaper.jpg
xob-start &

polybar top -r &
sxhkd &
picom --experimental-backends &
