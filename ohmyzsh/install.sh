#!/bin/zsh

# Install oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing oh-my-zsh"
    git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
    ln -s .ohmyzshrc ~/.ohmyzshrc

    # Install powerlevel10k
    . pw10k/install.sh
    # install plugins=( zsh-syntax-highlighting zsh-autosuggestions )
fi