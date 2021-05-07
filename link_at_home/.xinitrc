#!/bin/sh

xkbcomp ~/.hsh/xkb/rapoo_E9300M.xkb $DISPLAY
sxhkd -c ~/.hsh/conf/sxhkdrc &

slstatus &

telegram-desktop &
signal-desktop &

# If the last layout is not found (e.g. plugged monitor out then rebooted), this
# shouldn't have an adverse effect. The only problem I see is, if the user turns
# all monitors off, powers down, and then forgets that and comes into a desktop
# session with all monitors black.
(
    sleep 2
    xrandr --newmode `cvt 1680 1050 | grep Modeline | sed 's/Modeline //' `
    xrandr --addmode DP-2-3 1680x1050_60.00
    bash $HOME/.screenlayout/last_used
) &

until test -e $HSH_TMPDIR/endx; do 
    dwm >/$HSH_TMPDIR/.dwm.stdout 2>/$HSH_TMPDIR/.dwm.stderr
done
rm -f $HSH_TMPDIR/endx
