#!/bin/sh

DOTFILESDIR="$HOME/.dotfiles"

cd $HOME
ln -s "$DOTFILESDIR/.zshrc"
cp -n "$DOTFILESDIR/.zshrc_local.template" "$HOME/.zshrc_local"
ln -s "$DOTFILESDIR/.zshenv"
ln -s "$DOTFILESDIR/.emacs"
ln -s "$DOTFILESDIR/.emacs.d"
cp -n "$DOTFILESDIR/.gitconfig.template" "$DOTFILESDIR/.gitconfig"
ln -s "$DOTFILESDIR/.gitconfig"
ln -s "$DOTFILESDIR/.vscode"

# brew install emacs
yum install emacs

# brew install cask
curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python

# brew install editorconfig

# brew install multimarkdown

# brew install colordiff
yum install -y colordiff

# brew install node
curl -sL https://rpm.nodesource.com/setup_8.x | sudo bash -
yum install -y nodejs

# yum install git-flow

# brew install anyenv
git clone https://github.com/riywo/anyenv ~/.anyenv

cd "$DOTFILESDIR/.emacs.d"
cask install
