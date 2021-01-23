# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ "$(tty)" = "/dev/tty1" ] && startx

export HSH_TMPDIR='/r'

for DIR in ~/.hsh{,_confidential}/bashconf; do
	test -d $DIR && {
		for script in `ls $DIR/*.sh`; do
			source $script
		done
	} || {
		echo "$DIR not found. Have you run the scripts in hsh/init?"
	}
done
