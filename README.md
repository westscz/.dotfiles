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
- `nline`: Color lines, use case `$ ls -l | nline 5`
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
- <https://sneak.berlin/20191011/stupid-unix-tricks/>
- <https://blog.yossarian.net/2020/01/23/Anybody-can-write-good-bash-with-a-little-effort>