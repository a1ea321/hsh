# If not running interactively, don't do anything
[[ $- != *i* ]] && return

DIR=~/.hsh/bashconf

test -d $DIR && {
	for script in `ls $DIR/*.sh`; do
		source $script
	done
} || {
       	-echo 'SET DIR IN ~/.bashrc AND COMMENT THIS LINE'
	return
}
