#!/bin/bash
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo export DOTFILES="$DOTFILES_DIR" > ~/.config_dir

install(){
    create_directories
    # run_installers
    create_symlinks
}

create_directories(){
    echo "Create directories"
    mkdir -p $HOME/Playground
    mkdir -p $HOME/Projects
}

run_installers(){
    source $DOTFILES_DIR/install/apt
}

create_symlinks(){
    echo "Create shell symlinks"
    ln -sf "$DOTFILES_DIR/system/bashrc" ~/.bashrc
    ln -sf "$DOTFILES_DIR/system/profile" ~/.profile

    if [ "$XDG_CURRENT_DESKTOP" == "XFCE" ]
    then
        echo "Create XFCE specific symlinks"
        rm -r  ~/.config/xfce4/xfconf/xfce-perchannel-xml
        ln -sf "$DOTFILES_DIR/xfce/xfce-perchannel-xml" ~/.config/xfce4/xfconf/xfce-perchannel-xml
    fi

    echo "Create config files symlinks"
    ln -sf "$DOTFILES_DIR/config/classifier/.classifier-master.conf" ~/

    ln -sf "$DOTFILES_DIR/config/git/gitconfig" ~/.gitconfig


    rm -r ~/.config/terminator
    ln -sf "$DOTFILES_DIR/config/terminator" ~/.config/terminator
}

update(){
    echo TODO: Update files in .dotfile repo if symlinks are removed
    return 0
}

if declare -f "$1" > /dev/null
then
  "$@"
else
  echo "'$1' is not a known function name" >&2
  echo Available: install update
  exit 1
fi

# ---------------------------------
# Reference:
# ---------------------------------
# https://github.com/holman/dotfiles/blob/master/script/bootstrap