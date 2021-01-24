# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH_SUFFIX="$HOME/.hsh/scripts"
[[ ! $PATH == *"$PATH_SUFFIX"* ]] && export PATH="$PATH:$PATH_SUFFIX" 

export HSH_TMPDIR='/r/.hshtmp'
mkdir -p $HSH_TMPDIR

[[ `tty` = /dev/tty1 ]] && startx

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
