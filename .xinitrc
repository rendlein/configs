#!/bin/sh

xset +fp /usr/local/lib/X11/fonts/terminus-font &

urxvtd &

while true; do
	xsetroot -name `status`
	sleep 60;
done & 

exec /home/voleur/.bin/dwm
