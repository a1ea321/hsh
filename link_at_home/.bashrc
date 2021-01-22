# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ "$(tty)" = "/dev/tty1" ] && startx

DIR=~/.hsh/bashconf

test -d $DIR && {
	for script in `ls $DIR/*.sh`; do
		source $script
	done
} || {
	-echo 'SET DIR IN ~/.bashrc AND COMMENT THIS LINE'
	return
}
