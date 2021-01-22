# This part comes from
# https://stackoverflow.com/questions/9457233/unlimited-bash-history

# Make sure .bashrc or something does not set HISTSIZE, HISTFILESIZE etc.

# Note that HISTTIMEFORMAT does not specify how the time is saved into the
# history file, but how the output of the bash built-in `history` is formatted.

# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT='[%F %T]'
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.eternal_bash_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# "even if your history file grows to 10MB you won't notice much of an effect"
