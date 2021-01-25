#!/bin/bash

# After cloning a suckless repo, I need to edit the configuration files.
# This script (over)writes my configuration files into respective directories.

# Assumed directory structure is below for a suckless/ containing just slock and
# st. Symbolic links to the files marked by ** (my files) will be created in the
# directories marked by * (directories produced by `git clone`).

# TODO (maybe): Auto apply patches (if they become too many)

# ~/hsh_folder_whatever_the_name/suckless/
# ├── my_configs
# │   ├── inject_configs.sh <- This script
# │   ├── slock
# │   │   ├── config.h  **
# │   │   └── config.mk **
# │   └── st
# │       ├── config.h **
# │       └── config.mk **
# ├── patches
# │   ├── slock *
# │   │   ├── some_arbitrarily_named_patch.diff
# │   │   │...
# │   │   └── some_other_patch.diff
# │   └── st *
# │       └── st_patch.diff
# └── repos # projects cloned (as git submodules) from suckless's git repos
#     ├── slock *
#     │   ├── LICENSE
#     │   │...
#     │   └── util.h
#     └── st *
#         ├── FAQ
#         │...
#         └── x.c

# Make sure we are in my_configs/, whereever it might be.
DIR="$(
    cd "$(dirname ${BASH_SOURCE[0]})"
    pwd
)"
cd $DIR

for repo in $(ls ../repos); do
    pushd ../repos/$repo
    for config_file in $(ls ../../my_configs/$repo); do
        echo -n "Symlinking $repo/$config_file... "
        ln --symbolic --force ../../my_configs/$repo/$config_file &&
        echo DONE || echo FAILED
    done
    popd
done
