xrandr --output eDP --set TearFree on
dunst  &
mpd &
unclutter --timeout 3 &
xsetroot -cursor_name left_ptr &
exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1  &
exec bspwm
