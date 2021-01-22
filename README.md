# Initial setup:

There is (should be) a `~/.hsh_confidential` that points to a directory I back
up. I don't want people to see the contents of this directory. It has a
structure similar to `~/.hsh`: `~/.hsh_confidential/bashconf` holds my somewhat
secret bash variables, pointing to my IP addresses.
`~/.hsh_confidential/link_at_home/.ssh` is supposed to be pointed to by the
symlink `~/.ssh`. Those cannot be a part of this repo, but make sure you set up
`~/.hsh_confidential/` as well. (`~/.hsh/init/init_hsh_confidential.sh`)
