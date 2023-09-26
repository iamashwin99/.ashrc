#!/bin/zsh

# install tmux if not installed (auto detect package manager )
if ! command -v tmux &> /dev/null
then
    echo -e "\033[36mInstalling tmux\033[0m"
    . $ASHRC/tmux/install-tmux.sh
fi

# install tpm if not installed
if [ ! -d ~/.tmux/plugins/tpm ]; then
    echo -e "\033[36mInstalling tpm\033[0m"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

    # link config file
    ln -s $ASHRC/tmux/tmux.conf ~/.tmux.conf
fi