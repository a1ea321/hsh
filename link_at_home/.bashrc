# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH_SUFFIX="$HOME/.hsh/scripts"
[[ ! $PATH == *"$PATH_SUFFIX"* ]] && export PATH="$PATH:$PATH_SUFFIX" 

export HSH_TMPDIR='/r'
mkdir -p $HSH_TMPDIR

export SCREEN_LAYOUTS_DIR="$HOME/.screenlayout" # arandr default
export AUDIO_PLAYER='vlc'

[[ `tty` = /dev/tty1 ]] && startx

source <(cat ~/.hsh{,_confidential}/bashconf/*.sh 2>/dev/null)
