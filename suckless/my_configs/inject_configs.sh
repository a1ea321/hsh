#!/bin/bash


# After cloning a suckless repo, I need to edit the configuration files.
# This script (over)writes my configuration files into respective directories.

# Assumed directory structure is below.
# Symbolic links to the files marked by ** (my files) will be created in the)
# directories marked by * (directories produced by `git clone`)

# ~/hsh_folder_whatever_the_name/suckless/
# ├── dmenu
# ├── my_configs
# │   ├── inject_configs.sh <- This script
# │   ├── slock
# │   │   ├── config.h  **
# │   │   └── config.mk **
# │   └── st
# │       ├── config.h **
# │       └── config.mk **
# ├── slock *
# │   ├── LICENSE
# │   │...
# │   └── util.h
# └── st *
#     ├── FAQ
#     │...
#     └── x.c


DIR="$(
    cd "$(dirname ${BASH_SOURCE[0]})"
    pwd
)"
cd $DIR

for repo in $(ls -d */ | cut -f1 -d/); do
    for config_file in $(find $repo -type f); do
        ln --symbolic --force $DIR/$config_file ../$config_file
    done
done
