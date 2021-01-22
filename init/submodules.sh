#!/bin/bash

# Do this after running init_hsh.sh.

# Script may not work. Should hint nevertheless.

git submodule update --init --recursive
~/.hsh/suckless/my_configs/inject_configs.sh
