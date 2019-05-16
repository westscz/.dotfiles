#!/bin/bash

set -x
export DOTFILES=$HOME/.dotfiles
source $DOTFILES/system/profile
PATH=/home/jarek/.pyenv/bin:/home/jarek/bin:/home/jarek/.local/bin:/home/jarek/bin:/home/jarek/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/jarek/.dotfiles/scripts:/home/jarek/.dotfiles/scripts:/home/jarek/.dotfiles/scripts:/home/jarek/.dotfiles/scripts:/home/jarek/.fzf/bin:$PATH

echo "Setup done"

# Cleanup instagram

python3 ~/Projects/AutomateBoringStuff/instagram_saved.py use-env