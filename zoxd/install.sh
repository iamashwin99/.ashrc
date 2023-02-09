#!/bin/zsh

# Install zoxd
if [ ! -x "$HOME/.zoxd" ]; then
    echo -e "\033[36mInstalling zoxd\033[0m"
    curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
    touch $HOME/.zoxd
fi