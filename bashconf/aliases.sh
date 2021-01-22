c () { cd $1 && ls; }

alias W='watch -n 0.5 -d'

command -v xclip > /dev/null && {
	alias ctrlc='xclip -in -selection clipboard'
	alias ctrlv='xclip -out -selection clipboard'
	pc () {
		pwd | 
		tr '\n' '/' |
		xclip -in -selection clipboard &&
		xclip -out -selection clipboard &&
		echo ' copied to clipboard.'
	}
} ||
pc () {
	echo 'xclip not found!'
}

alias dat='date "+%y%m%d_%H%M"'

alias ipy='ipython --no-confirm-exit'

# --mathlib is to get more digits after comma without having to set BC_ENV_ARGS
alias bc='bc --quiet --mathlib' 

alias view='vim -R'
