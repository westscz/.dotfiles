#!/bin/bash
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo export DOTFILES="$DOTFILES_DIR" > ~/.config_dir

install(){
    create_directories
    create_symlinks
}

create_directories(){
    echo "Create directories"
    mkdir -p $HOME/Playground
    mkdir -p $HOME/Projects
}

create_symlinks(){
    echo "Create symlinks"
    ln -sf "$DOTFILES_DIR/git/gitconfig" ~/.gitconfig
    ln -sf "$DOTFILES_DIR/system/bashrc" ~/.bashrc
    ln -sf "$DOTFILES_DIR/system/profile" ~/.profile

    if [ "$XDG_CURRENT_DESKTOP" == "XFCE" ]
    then
        echo "XFCE specific symlinks"
        ln -sf "$DOTFILES_DIR/xfce/xfce4-keyboard-shortcuts.xml" ~/.config/xfce4/xfconf/xfce-perchannel-xml/
        ln -sf "$DOTFILES_DIR/xfce/xfce4-panel.xml" ~/.config/xfce4/xfconf/xfce-perchannel-xml/
    fi

    echo "Classifier config file symlink"
    ln -sf "$DOTFILES_DIR/tools/.classifier-master.conf" ~/
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