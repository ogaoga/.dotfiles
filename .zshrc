
# SHELL
export SHELL="/bin/zsh"

# Don't use ^D to exit
set -o ignoreeof

# Don't put duplicate lines in the history.
export HISTCONTROL=ignoredups

# Don't make core file
ulimit -c 0

## It always makes a new file as 644 permission.
umask 022

# Prompt
setopt PROMPT_SUBST ; PS1='[%n@%c$(__git_ps1 " (%s)")]\$ '

## enable color
autoload -Uz colors
colors

## enable completion

# completion for docker
fpath=(~/.dotfiles/completion $fpath)
autoload -Uz compinit && compinit -i

# ignore upper/lower cases
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'

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

alias fixdocker='screen -f ~/Library/Containers/com.docker.docker/Data/vms/0/tty'

# diff
if [[ -x `which colordiff` ]]; then
    alias diff='colordiff -u'
else
    alias diff='diff -u'
fi

# source
source $HOME/.dotfiles/git-prompt.sh
source $HOME/.dotfiles/completion/git-flow-completion.zsh

# anyenv
eval "$(anyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pyenv & virtualenv
# export PYENV_ROOT=$HOME/.pyenv
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# read local bashrc
if [ -f ~/.zshrc_local ]; then
    . ~/.zshrc_local
fi
