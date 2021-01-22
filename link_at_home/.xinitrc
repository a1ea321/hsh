xkbcomp ~/.hsh/xkb/lenovo_t440.xkb :0
until test -e /r/dont_restart_dwm; do dwm; done
