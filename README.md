    ▄▄███▄▄·██╗  ██╗ ██████╗ ███╗   ███╗███████╗    ██╗         
    ██╔════╝██║  ██║██╔═══██╗████╗ ████║██╔════╝   ██╔╝   ▄ ██╗▄
    ███████╗███████║██║   ██║██╔████╔██║█████╗    ██╔╝     ████╗
    ╚════██║██╔══██║██║   ██║██║╚██╔╝██║██╔══╝   ██╔╝     ▀╚██╔▀
    ███████║██║  ██║╚██████╔╝██║ ╚═╝ ██║███████╗██╔╝   ██╗  ╚═╝ 
    ╚═▀▀▀══╝╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝╚═╝    ╚═╝      

# You’re The King Of Your Castle! [ under development ]

# Install

    ./dotfiles.sh install

# Source structure

    ├── config          --config files for things like ssh/terminator/etc
    ├── dotfiles.sh     --main script to install dotfiles
    ├── git             --git config
    ├── install         --install scripts for apt/pip/snap/etc
    ├── scripts         --some user scripts
    ├── system          --system scripts like bashrc/alias/functions/etc
    ├── theme           --fonts/wallpapers/icons
    └── xfce            --xfce specific configuration files

# TODO

- [ ] Make something awesome with panels! `xfconf-query` will help
- [ ] Some auto push configuration script
- [ ] Merge `Flat Remix` and `La Capitaine` icons
- [ ] Git Update
  - [ ] <https://github.com/Blackhippy/Dotfiles/blob/master/scripts/gitupdate.sh>
  - [ ] (cd $(dirname $(readlink $(which git-semver))) && git status)
- [x] Everything update
- [ ] Try i3 on xubuntu
  - [ ] <https://github.com/aacebedo/i3-xfce>
  - [ ] <http://feeblenerd.blogspot.com/2015/11/pretty-i3-with-xfce.html>
- [ ] Custom man page for dotfiles and/or usefull commands
  - [ ] <https://www.cyberciti.biz/faq/linux-unix-creating-a-manpage/>
- [ ] ZSH!
  - [ ] https://github.com/unixorn/awesome-zsh-plugins#plugins
- [ ] Thunderbird backup creation
  - [ ] https://www.cyberciti.biz/faq/linux-backup-thunderbird-email-profile/
- [x] VSCode config
  - [x] https://www.growingwiththeweb.com/2016/06/syncing-vscode-extensions.html
  - [x] ~/.config/Code/User/workspaceStorage
- [x] PyCharm config
  - [x] ~/.PyCharmCE2018.2/config/
- [ ] Multitouch gestures maybe?
  - [ ] https://github.com/guyzmo/kitt
- [ ] Check apps <https://remysharp.com/2018/08/23/cli-improved>
- [ ] Move window to other monitor
    - [ ] https://github.com/calandoa/movescreen
    - [ ] https://unix.stackexchange.com/questions/48456/xfce-send-window-to-other-monitor-on-keystroke
    - [ ] https://github.com/jc00ke/move-to-next-monitor/blob/master/move-to-next-monitor
- [ ] https://haydenjames.io/htop-heres-how-to-customize-it/
- [ ] Check "Alfred" alternative
    - [ ] https://dev.to/gksander/breaking-up-with-my-mouse-mac-edition-49md
    - [ ] https://medium.com/curiouscaloo/macos-to-ubuntu-part1-alfred-replacement-7864b4d26397
    - [ ] https://albertlauncher.github.io/docs/installing/
- [ ] Save actual instaled packets to files

# Credits

- Mathias Bynens <https://github.com/mathiasbynens/dotfiles>
- Nick S. Plekhanov <https://github.com/nicksp/dotfiles>
- Lars Kappert <https://github.com/webpro/dotfiles>
- Wynn Netherland, Adam Jahnke <https://dotfiles.github.io/>
- Xero <https://github.com/xero/dotfiles/>
- Lars Moelleken <https://github.com/voku/dotfiles>
- Ivy Zhang <https://github.com/iiPlasma/dots>
- Remy Sharps <https://remysharp.com/2018/08/23/cli-improved>