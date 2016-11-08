#!/bin/sh

DOTFILESDIR=$HOME/.dotfiles

cd $HOME
ln -s $DOTFILESDIR/.bash_profile
ln -s $DOTFILESDIR/.bashrc
cp -n $DOTFILESDIR/.bashrc_local.template $DOTFILESDIR/.bashrc_local
ln -s $DOTFILESDIR/.bashrc_local
ln -s $DOTFILESDIR/.inputrc
ln -s $DOTFILESDIR/.emacs
ln -s $DOTFILESDIR/.emacs.d
cp -n $DOTFILESDIR/.gitconfig.template    $DOTFILESDIR/.gitconfig
ln -s $DOTFILESDIR/.gitconfig

brew install cask
brew install bash_completion
brew install editorconfig
brew install multimarkdown
brew install colordiff

cd $DOTFILESDIR/.emacs.d
cask install
