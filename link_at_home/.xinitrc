#!/bin/sh

xkbcomp ~/.hsh/xkb/lenovo_t440.xkb $DISPLAY

until test -e $HSH_TMPDIR/endx; do 
	dwm >/r/.dwm.stdout 2>/r/.dwm.stderr
done
rm -f $HSH_TMPDIR/endx
