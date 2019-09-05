#!/bin/sh

DOTFILESDIR=$HOME/.dotfiles

cd $HOME
ln -s $DOTFILESDIR/.zshrc
ln -s $DOTFILESDIR/.zshenv
ln -s $DOTFILESDIR/.emacs
ln -s $DOTFILESDIR/.emacs.d
cp -n $DOTFILESDIR/.gitconfig.template    $DOTFILESDIR/.gitconfig
ln -s $DOTFILESDIR/.gitconfig

brew install emacs
brew install cask
brew install editorconfig
brew install multimarkdown
brew install colordiff
brew install node
brew install git-flow

cd $DOTFILESDIR/.emacs.d
cask install
