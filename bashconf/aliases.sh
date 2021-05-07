c () { cd $1 && ls; }

alias W='timeout 30m watch -n 0.5 -d'

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

########### https://xkcd.com/1168/ ###########

# Not compressed
alias untar='tar -xvf'

# GZIP
alias tar.gz='tar -czvf NAME_OF_ARCHIVE.tar.gz /path/to/directory-or-file'
alias untar.gz='tar -xvzf'

# BZIP2 – compresses better than GZIP but slower
alias tar.bz2='tar -cjvf NAME_OF_ARCHIVE.tar.bz2 /path/to/directory-or-file'
alias untar.bz2='tar -xvjf' # BZIP2

##############################################
