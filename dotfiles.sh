#!/bin/bash
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo export DOTFILES="$DOTFILES_DIR" > ~/.config_dir

install(){
    create_directories
    run_installers
    create_symlinks
    setup_crontab
}

create_directories(){
    echo "Create directories"
    mkdir -p $HOME/.virtualenvs
    mkdir -p $HOME/Playground
    mkdir -p $HOME/Projects
}

setup_crontab(){
    crontab $DOTFILES_DIR/system/crontab
    chmod +x $DOTFILES_DIR/cron/*.sh
}

run_installers(){
    installers=(
         apt
        # flatpak
         snap
         pip
         git
        # TODO: Verify apps on installers lists
    )

    for installer in "${installers[@]}"
    do
        source $DOTFILES_DIR/install/$installer
    done
}

install_theme(){
    echo "Install fonts"
    sudo cp -r -a "$DOTFILES_DIR/theme/fonts/." /usr/share/fonts/

    # TODO: Decide if we need those icons
    # echo "Install icons"
    # sudo cp -r -a "$DOTFILES_DIR/theme/icons/." /usr/share/icons/
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

    #CREATE only if not exist
    echo "Create config files symlinks"
    ln -sf "$DOTFILES_DIR/config/classifier/.classifier-master.conf" ~/

    ln -sf "$DOTFILES_DIR/config/git/.gitconfig" ~/.gitconfig
    ln -sf "$DOTFILES_DIR/config/git/.gitconfig-gitlab" ~/.gitconfig-gitlab

    #ADD Only if which(terminator) == True
    rm -r ~/.config/terminator
    ln -sf "$DOTFILES_DIR/config/terminator" ~/.config/terminator

    # rm -r ~/.PyCharm*/config/options
    # ln -sf "$DOTFILES_DIR/config/pycharm/options" ~/.PyCharm*/config
    # TODO: Get plugins list and remove

    rm -r ~/.config/Code/User
    ln -sf "$DOTFILES_DIR/config/vscode/User" ~/.config/Code/

    rm -r ~/.config/i3
    ln -sf "$DOTFILES_DIR/config/i3" ~/.config/i3

    rm -r ~/.config/i3status
    ln -sf "$DOTFILES_DIR/config/i3status" ~/.config/i3status

}

update(){
    echo TBD
    echo '-- Apt cleanup'
	sudo apt autoremove
	sudo apt autoclean
	sudo apt-get clean
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
