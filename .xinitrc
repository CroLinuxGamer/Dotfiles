/usr/bin/prime-offload
transmission-daemon &
dunst  &
mpd &
xsetroot -cursor_name left_ptr &
exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1  &
exec dbus-launch bspwm
