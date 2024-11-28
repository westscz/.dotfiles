#!/bin/bash

# If osx
## If not which brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> /Users/jabko/.zprofile
echo 'eval "$(/usr/local/bin/brew shellenv)"' >> /Users/jabko/.zprofile
eval "$(/usr/local/bin/brew shellenv)"
brew install make
# export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"

# will work on linux and osx
# base for python apps, global python and python scripts
curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env
uv self update
uv python install 3.12


# uvx classifier

mkdir Internal
mkdir External

# Create ssh key for github
ssh-keygen -t ed25519 -C "westscz@gmail.com" -f ~/.ssh/git -N "" -q
ssh-add ~/.ssh/git
cat ~/.ssh/git.pub | pbcopy

# https://github.com/settings/ssh/new
# https://gitlab.com/-/user_settings/ssh_keys

brew install gh
gh auth login

gh repo clone https://github.com/westscz/.dotfiles.git
#
