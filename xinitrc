#!/bin/sh

xset +fp /usr/local/lib/X11/fonts/terminus-font &

eval `cat $HOME/.fehbg` &

urxvtd -q -f -o

while true; do
	xsetroot -name "`status`"
	sleep 60;
done & 

exec /home/voleur/.bin/dwm
