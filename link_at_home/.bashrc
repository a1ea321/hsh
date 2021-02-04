# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH_SUFFIX="$HOME/.hsh/scripts"
[[ ! $PATH == *"$PATH_SUFFIX"* ]] && export PATH="$PATH:$PATH_SUFFIX" 

export HSH_TMPDIR='/r'
mkdir -p $HSH_TMPDIR

export SCREEN_LAYOUTS_DIR="$HOME/.screenlayout" # arandr default
export AUDIO_PLAYER='vlc'

[[ `tty` = /dev/tty1 ]] && startx

for DIR in ~/.hsh{,_confidential}/bashconf; do
	test -d $DIR && {
		for script in `ls $DIR/*.sh 2> /dev/null`; do
			source $script
		done
	} || {
		echo "$DIR not found. Have you run the scripts in hsh/init?"
	}
done
