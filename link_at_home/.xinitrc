#!/bin/sh

xkbcomp ~/.hsh/xkb/lenovo_t440.xkb $DISPLAY

# If the last layout is not found (e.g. plugged monitor out then rebooted), this
# shouldn't have an adverse effect. The only problem I see is, if the user turns
# all monitors off, powers down, and then forgets that and comes into a desktop
# session with all monitors black.
~/.screenlayout/last_used

until test -e $HSH_TMPDIR/endx; do 
	dwm >/r/.dwm.stdout 2>/r/.dwm.stderr
done
rm -f $HSH_TMPDIR/endx
