#xrandr --setprovideroutputsource modesetting NVIDIA-0
#xrandr --auto
#xrandr --dpi 96
dunst  &
mpd &
unclutter --timeout 3 &
xsetroot -cursor_name left_ptr &
exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1  &
exec dbus-launch bspwm
