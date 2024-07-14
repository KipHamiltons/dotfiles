#!/bin/sh

set -euo pipefail

cp -R $(dirname $0)/. $HOME/

if [[ "$(uname)" =~ "Darwin" ]]; then
    # Needed this one time. Not sure why.
    sudo chown kiphamiltons "$HOME/.vim/undodir"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew update && brew upgrade
    PKG_INSTALL_CMD="brew install"
    ${PKG_INSTALL_CMD} --cask iterm2
else
    echo 'TODO: Update when I run this on a linux machine'
    exit 1
fi

PKG_LIST="\
    awscli \
    bat \
    bazelisk \
    buildozer \
    gcc \
    git \
    jq \
    neovim \
    ripgrep \
    starship \
    tree \
    tree-sitter \
"

${PKG_INSTALL_CMD} ${PKG_LIST}

mkdir -p "$HOME/.vim/undodir"

PACKER_PATH="$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"

mkdir -p "${PACKER_PATH}"

git clone --depth 1 https://github.com/wbthomason/packer.nvim "${PACKER_PATH}"

nvim +PackerSync
