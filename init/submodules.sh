#!/bin/bash

# Do this after running init_hsh.sh.

# Script may not work. Should hint nevertheless.

cd ~/.hsh || {
    echo 'Did you run ~/.hsh/init/init_hsh.sh?'
    exit 1
}

git submodule update --init --recursive
~/.hsh/suckless/my_configs/inject_configs.sh

command -v 

cd ~/.hsh/suckless/repos
for repo in `ls`; do
    cd $repo
    make &&
    read -p "`make $repo` successful. You may 'make install' it as root." ||
    read -p "Problem making $repo. Press ENTER to continue."
    cd ..
done
