export EDITOR=vim
export PAGER=less
shopt -s globstar

# CTRL-W deletes until last whitespace, Alt+Backspace deletes until last _ or
# something. Yet often I need to delete to last '/'. Hence the following:
bind '"\e/":unix-filename-rubout'
# Now Alt+Slash ('/', that is) deletes to last '/'.

# CTRL-J and -F normally behave like Enter and right arrow. Might as well use 
# them for something else.
bind -x '"\C-j":jobs -pl'
bind -x '"\C-f":fg -'

# Using CTRL+R, you can search backwards in the command history, but not
# forwards. With the The following line, CTRL+S can be used to search forwards.
stty -ixon

# When you hit tab while the command line is empty, you get a list of past
# commands. Then you get to select one with fuzzy finder. When you press Enter,
# it does not get executed straightaway so you have a chance to edit it.
_history2fzf () {
    history |
    cut -f 2- -d ] |
    sed 's/ *$//; s/^ *//' |
    awk '!x[$0]++' | # Remove duplicate lines without sorting
    fzf --tac
}
complete -E -C _history2fzf
