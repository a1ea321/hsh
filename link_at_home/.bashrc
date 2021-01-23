# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ "$(tty)" = "/dev/tty1" ] && startx

[[ ! $PATH == *~/.hsh/scripts* ]] && export PATH="$PATH:~/.hsh/scripts" 
export HSH_TMPDIR='/r'
export AUDIO_PLAYER='vlc'

for DIR in ~/.hsh{,_confidential}/bashconf; do
	test -d $DIR && {
		for script in `ls $DIR/*.sh`; do
			source $script
		done
	} || {
		echo "$DIR not found. Have you run the scripts in hsh/init?"
	}
done
