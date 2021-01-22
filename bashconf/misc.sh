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

