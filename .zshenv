export PATH="/usr/local/bin:$PATH"

case ${OSTYPE} in
linux*)
    # setting for linux
    export PATH="$HOME/.cask/bin:$HOME/.anyenv/bin:$PATH"
esac
