##########################################################
# User dependent .bashrc file
##########################################################

# See man bash for more options...
# Don't wait for job termination notification
# set -o notify

# Don't use ^D to exit
set -o ignoreeof

# Don't put duplicate lines in the history.
# export HISTCONTROL=ignoredups

# Don't make core file
ulimit -c 0

## It always makes a new file as 644 permission.
umask 022

# ========================================================
# exports

#export PAGER=less

# Delete LANG
# Japanese message will not apear.
#unset LANG
#export LANG=ja_JP

# ========================================================
# aliases

alias ll='ls -la -G'
alias l='ll'

alias cp='cp -i '
alias mv='mv -i '
alias rm='rm -i '

alias ..='cd ..'
alias o='open'

# source
source $HOME/.dotfiles/git-completion.bash
source $HOME/.dotfiles/git-flow-completion.bash

# ========================================================
# local

# read local bashrc
if [ -f ~/.bashrc_local ]; then
    . ~/.bashrc_local
fi
if [ -f ~/.bashrc_private ]; then
    . ~/.bashrc_private
fi
