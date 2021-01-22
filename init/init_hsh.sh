#!/bin/bash

[ -z "$1" ] && {
	echo 'Absolute path to .hsh must be first argument.'
	exit 1
}
path="$1"

cd ~

test -d "$path" || {
	echo "$path is not a directory."
	exit 2
}

ln --force --symbolic "$path" .hsh

echo "I AM ABOUT TO OVERWRITE STUFF!! Make sure you don't need these files:"
comm -12 <(ls -A1 ~/.hsh/link_at_home) <(ls -A1 ~)
read -p "Continue? (y/n) " -n 1 -r
echo
[[ ! $REPLY =~ ^[Yy]$ ]] && {
	echo 'Aborting.'
	exit 3
}

for file in `ls -A ~/.hsh/link_at_home`; do
	ln --force --symbolic ~/.hsh/link_at_home/$file 
done
