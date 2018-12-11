    ▄▄███▄▄·██╗  ██╗ ██████╗ ███╗   ███╗███████╗    ██╗
    ██╔════╝██║  ██║██╔═══██╗████╗ ████║██╔════╝   ██╔╝   ▄ ██╗▄
    ███████╗███████║██║   ██║██╔████╔██║█████╗    ██╔╝     ████╗
    ╚════██║██╔══██║██║   ██║██║╚██╔╝██║██╔══╝   ██╔╝     ▀╚██╔▀
    ███████║██║  ██║╚██████╔╝██║ ╚═╝ ██║███████╗██╔╝   ██╗  ╚═╝
    ╚═▀▀▀══╝╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝╚═╝    ╚═╝

# You’re The King Of Your Castle! [ under development ]

Target platforms: Xubuntu

## Installation

### Clone

    git clone https://github.com/westscz/.dotfiles.git ~/.dotfiles

This will clone repository to ~/.dotfiles directory

### Install

    ./dotfiles.sh install

### CLI

    df_config           --open dotfiles in `$EDITOR`
    df_upgrade          --restart dotfiles

## Source structure

    ├── config          --config files for tools like ssh/terminator/etc
    ├── dotfiles.sh     --main script to install dotfiles
    ├── install         --install scripts for apt/pip/snap/etc
    ├── scripts         --some user scripts
    ├── system          --system scripts like bashrc/alias/functions/etc
    ├── theme           --fonts/wallpapers/icons
    └── xfce            --xfce specific configuration files

## Functions

- `mk`: Create a new directory and enter it
- `g`: No arguments: `git status`, else acts like `git`
- `play`: This creates a new playground with the name given as a - command line arg
- `o`: With no arguments opens the current directory, otherwise opens - the given location
- `tre`: Shorthand for `tree` with hidden files and color enabled
- `ssh_key`: Print SSH if exist, else generate before
- `logbook`: Create markdown file with actual date, default in - ~/Notebook/logbook/
- `extract`: Extracts archived files
- `backup`: Create a copy of a file/directory with appended .backup
- `nline`: Color lines,  use case `$ ls -l | nline 5`
- `cleanup`: Cleanup apt, trash and sort files in Downloads directory
- `update`: Update all packages in apt/flake/snap
- `current`: Save current installed packages list
- `e`: Open current directory in editor, or other with `e ~/directory`
- `gitpush`: Commit all uncommited files and push
- `mv_next_display`: Move window to next display
- `sysinfo`: Custom show system info
- `terminal_test`: Test terminal colors

## License

The contents of this repo are in the public domain. See the [LICENSE](LICENSE.md) for details.

## Credits

- Mathias Bynens <https://github.com/mathiasbynens/dotfiles>
- Nick S. Plekhanov <https://github.com/nicksp/dotfiles>
- Lars Kappert <https://github.com/webpro/dotfiles>
- Wynn Netherland, Adam Jahnke <https://dotfiles.github.io/>
- Xero <https://github.com/xero/dotfiles/>
- Lars Moelleken <https://github.com/voku/dotfiles>
- Ivy Zhang <https://github.com/iiPlasma/dots>
- Remy Sharps <https://remysharp.com/2018/08/23/cli-improved>

## TODO

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
- [x] Check "Alfred" alternative
    - [ ] https://dev.to/gksander/breaking-up-with-my-mouse-mac-edition-49md
    - [ ] https://medium.com/curiouscaloo/macos-to-ubuntu-part1-alfred-replacement-7864b4d26397
    - [ ] https://albertlauncher.github.io/docs/installing/
- [ ] Save actual instaled packets to files
- [ ] NCMPCPP
    - [ ] https://gist.github.com/klorax/dc1bcc21c76a79becbb6c1ba01ce4c68
- [ ] nnn
    - [ ] https://github.com/jarun/nnn
- [ ] Bat-> A new Cat https://github.com/sharkdp/bat
- [ ] Fd -> A new find https://github.com/sharkdp/fd
- [ ] Make README more descriptive like https://github.com/wincent/wincent
- [x] fzf is awesome!