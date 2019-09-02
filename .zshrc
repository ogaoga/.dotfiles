
# Don't use ^D to exit
set -o ignoreeof

# Don't put duplicate lines in the history.
# export HISTCONTROL=ignoredups

# Don't make core file
ulimit -c 0

## It always makes a new file as 644 permission.
umask 022

# Prompt
PROMPT='[%n@%~] '

# ========================================================
# aliases

alias ll='ls -la -G'
alias l='ll'

alias cp='cp -i '
alias mv='mv -i '
alias rm='rm -i '

alias ..='cd ..'
alias o='open'

alias simpleHTTPServer='python -m SimpleHTTPServer'
alias gitls='git status'
alias 2utf8='nkf -Lu --utf8 --overwrite'
alias securezip='~/.dotfiles/securezip.sh'

# diff
if [[ -x `which colordiff` ]]; then
    alias diff='colordiff -u'
else
    alias diff='diff -u'
fi

# source
# source $HOME/.dotfiles/git-completion.bash
# source $HOME/.dotfiles/git-prompt.sh
# source $HOME/.dotfiles/git-flow-completion.bash
# source $HOME/.dotfiles/npm-completion.bash
