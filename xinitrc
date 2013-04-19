#!/bin/sh

xset +fp /usr/local/lib/X11/fonts/terminus-font &

feh --bg-center "/home/voleur/.wallpapers/CB.png" &

urxvtd -q -f -o

while true; do
	xsetroot -name "`status`"
	sleep 60;
done & 

#exec xmonad
#exec /home/voleur/.bin/dwm
exec /home/voleur/.bin/stumpwm
