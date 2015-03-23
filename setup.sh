#!/bin/sh

cd $HOME
ln -s $HOME/.dotfiles/.bash_profile
ln -s $HOME/.dotfiles/.bashrc
cp $HOME/.dotfiles/.bashrc_local.template $HOME/.dotfiles/.bashrc_local
ln -s $HOME/.dotfiles/.bashrc_local
