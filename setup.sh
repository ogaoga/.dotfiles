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

brew install emacs
brew install cask
brew install editorconfig
brew install multimarkdown
brew install colordiff
brew install node
brew install git-flow
brew install anyenv

cd "$DOTFILESDIR/.emacs.d"
cask install

# for vscode
VSCODEDIR="$HOME/Library/Application Support/Code/User/"
if [ -d "$VSCODEDIR" ]; then
    cd "$VSCODEDIR"
    rm settings.json
    ln -s "$DOTFILESDIR/vscode/settings.json"
    rm keybindings.json
    ln -s "$DOTFILESDIR/vscode/keybindings.json"
fi
