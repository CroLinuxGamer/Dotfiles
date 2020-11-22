/usr/bin/prime-offload
transmission-daemon &
dunst  &
mpd &
xsetroot -cursor_name left_ptr &
xset m 3/2 0 &
exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1  &
exec dbus-launch bspwm
