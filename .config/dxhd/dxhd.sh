#!/bin/sh


## Config by:
##   ____                            _    _         _             _    _
##  / ___|_ __ ___  _ __  _   _     / \  | | ____ _| |_ ___ _   _| | _(_)
## | |   | '__/ _ \| '_ \| | | |   / _ \ | |/ / _` | __/ __| | | | |/ / |
## | |___| | | (_) | | | | |_| |  / ___ \|   < (_| | |_\__ \ |_| |   <| |
##  \____|_|  \___/|_| |_|\__, | /_/   \_\_|\_\__,_|\__|___/\__,_|_|\_\_|
##                        |___/

##---BSPWM Bindings---##

## System turn off
#super + shift + e
rofi -show power-menu -modi power-menu:power-menu -show-icons -font "hack 16" -lines 2 -width 12%

## Quit bsowm
#super + ctrl + e
quit.sh

## Restart bspwm
#super + shift + r
bspc wm -r

## Close Window
#super + shift + q
xdo close

## Kill Window
#ctrl + alt + Escape
xkill

## Focus on window in direction
#super + {Left,Down,Up,Right}
bspc node -f {west,south,north,east}

##	Send window to desktop
#super + shift + {1-9}
bspc node -d {1-9} 

## Toggle floating on and off
#super + shift + space
bspc node focused.tiled -t floating || bspc node focused.floating -t tiled

## Swap window with direction
#super + shift + {Left,Down,Up,Right}
bspc node -s {west,south,north,east}

## Focus on desktop
#super + {1-9}
bspc desktop -f {1-9}

## Last used workspace/window
#{super,alt} + Tab
bspc {desktop,node} -f last

## Cycle trought windows/workspaces
#{super,alt} + space
bspc {desktop,node} -f next.local

## Fullscreen toggle
#super + F11
bspc node -t \~fullscreen

##---System Control---##

## Audio Control
#{XF86AudioRaiseVolume,XF86AudioLowerVolume,XF86AudioMute}
pamixer {-i 2, -d 2, --toggle}

## Brightness
#{XF86MonBrightnessUp,XF86MonBrightnessDown}
light {-A 5, -U 5} && lemonlight > $PANEL_FIFO_BOTTOM

## System look control
#super + {ctrl,shift} + F12
{cluter.sh ,clean.sh}

## mpd control keybindings
#{XF86AudioPlay,XF86AudioStop,XF86AudioPrev,XF86AudioNext}
mpc {toggle,stop,prev,next} && lemonsong-status > $PANEL_FIFO_TOP

##---Application Launchers---##

## run rofi
#super + d
rofi -modi drun -show drun -show-icons -display-drun "" -font "hack 14" -lines 12 -width 25

## run my gui programs
#super + {Return,b,g}
{$TERMINAL,$BROWSER,lutris}

## terminal programs
#super + {m,f,h,e,n,w,t}
$TERMINAL -e {ncmpcpp,lf,htop,$EDITOR,newsboat,adl,trackma-curses}

## some more programs
#super + shift + {f,n}
{pcmanfm,connman-gtk}

## run cli programs
#super + shift + {t,m,w}
$TERMINAL -e {tremc,aerc,adl -d}

## system programs
#super + ctrl + f
gparted

##---Keyboard bindings---##

## turn on led
#Scroll_Lock
kbd-light-toogle

##--Dmenu bindings---#

## dmenu usb mount and unmount
#super + {shift,ctrl} + u
{dmenumount,dmenuumount}

## dmenu pdf mans
#super + ctrl + m
dmenuman

## dmenu list directories
#super + {l,s,v}
{dmenulightnovels,dmenuschool,dmenuvideos}

## dmenu screenshot menu
#Print
dmenuscreenshot
