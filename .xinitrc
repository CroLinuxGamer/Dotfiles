dunst  &
mpd &
xsetroot -cursor_name left_ptr &
xrandr --output eDP --set "scaling mode" "Full" &
exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1  &
exec dbus-launch --exit-with-session bspwm
xset r rate 660 25
