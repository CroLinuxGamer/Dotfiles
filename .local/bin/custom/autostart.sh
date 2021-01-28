#!/bin/sh

# section for programs that just run
xwallpaper --stretch /usr/share/wallpapers/Adapta/contents/images/3840x2160.png &
ryzenadj_normal &
xsetroot -cursor_name left_ptr &
xrandr --output eDP --set TearFree on

# section for programs that dont need to restart
if ! pgrep -x "mpd" > /dev/null
then 
    mpd 
fi

# if ! pgrep -x "floating.sh" > /dev/null 
# then 
    # floating.sh & 
# fi

# if ! pgrep -x "dxhd" > /dev/null 
# then 
    # dxhd & 
# fi

if ! pgrep -x "xfce4-power-manager" > /dev/null 
then 
    xfce4-power-manager & 
fi

if ! pgrep -x "picom" > /dev/null 
then 
    picom --experimental-backends & 
fi

if ! pgrep -x "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1" > /dev/null 
then 
    '/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1' & 
fi

# kill section for case that you will reset bspwm
killall polybar
sleep 0.1
killall dunst
sleep 0.1
killall sxhkd
sleep 0.1

# programs section
dunst &
sleep 0.1
sxhkd &
sleep 0.1
polybar top -r &

# for programs that I might need in future

# killall slideshow
# sleep 0.1

# slideshow ~/Pictures/wallpapers &
# feh --bg-fill --no-fehbg ~/Pictures/wallpaper.png

# mouse_detect.sh &
# sleep 0.1
