#!/bin/bash

set -x
export DOTFILES=$HOME/.dotfiles
source $DOTFILES/system/profile
PATH=/home/$USER/.pyenv/bin:/home/$USER/bin:/home/$USER/.local/bin:/home/$USER/bin:/home/$USER/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/$USER/.dotfiles/scripts:/home/$USER/.dotfiles/scripts:/home/$USER/.dotfiles/scripts:/home/$USER/.dotfiles/scripts:/home/$USER/.fzf/bin:$PATH

echo "Setup done"

# Cleanup

cleanup