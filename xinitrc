#!/bin/sh

xset +fp /usr/local/share/fonts/terminus-font &

urxvtd -q -f -o

#musicpd &

#while true; do
#    xsetroot -name " `mpc --format "[[%artist% - ](%album%)]|[%file%]" | head -1 `"
#	sleep 3;
#done & 

## Un comment when stumpwm can compile with sbcl again
exec /home/rendlein/.src/stumpwm/stumpwm
#exec stumpwm
#exec dwm
