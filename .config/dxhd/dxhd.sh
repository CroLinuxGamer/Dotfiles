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
dmenupowermenu

## Quit bsowm
#super + ctrl + e
quit.sh

## Restart bspwm
#super + shift + r
bspc wm -r

## Close current window
#super + shift + q
xdo close

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
light {-A 10, -U 10} && lemonlight > $PANEL_FIFO_TOP

## mpd control keybindings
#{XF86AudioPlay,XF86AudioStop,XF86AudioPrev,XF86AudioNext}
mpc {toggle,stop,prev,next} && lemonsong-status > $PANEL_FIFO_TOP

##---Application Launchers---##

## run rofi
#super + d
rofi -modi drun -show drun -show-icons -display-drun "" -font "hack 14" -lines 12 -width 25

## run my gui programs
#super + {Return,b}
{$TERMINAL,$BROWSER}

## terminal programs
#super + {m,f,h,e,n,w,t}
$TERMINAL -e {ncmpcpp,lf,htop,$EDITOR,newsboat,adl,trackma-curses}

## some more programs
#super + shift + {f}
{pcmanfm}

## run cli programs
#super + shift + {m,w,n}
$TERMINAL -e {aerc,adl -d,nmtui}

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

## dmenu list directories
#super + {l}
{dmenulightnovels ~/Lightnovels}

## dmenu screenshot menu
#Print
dmenuscreenshot
