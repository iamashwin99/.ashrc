#!/bin/zsh

# Install oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo -e "\033[36mInstalling oh-my-zsh\033[0m"
    git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
    ln -s $ASHRC/ohmyzsh/ohmyzshrc.sh ~/.ohmyzshrc

    # Install powerlevel10k
    echo -e "\033[36mInstalling powerlevel10k\033[0m"
    . ohmyzsh/pw10k/install.sh
    # install plugins=( zsh-syntax-highlighting zsh-autosuggestions )
    echo -e "\033[36mInstalling plugins\033[0m"
    . ohmyzsh/plugins/install.sh
fi

echo -e "\033[36mSkipping install of oh my zsh\033[0m"