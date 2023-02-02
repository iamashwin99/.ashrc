#!/bin/zsh

# if $ZSH_CUSTOM is not set source ~/.ohmyzshrc and set $ZSH_CUSTOM
if [ -z "$ZSH_CUSTOM" ]; then
    . ~/.ohmyzshrc
fi


# Install pwerlevel10k
# if folder $ZSH_CUSTOM/themes/powerlevel10k is not present then clone  powerlevel10k and link p10k.zsh to ~/.p10k.zsh
if [ ! -d "$ZSH_CUSTOM/themes/powerlevel10k" ]; then
    echo -e "\033[36mInstalling powerlevel10k\033[0m"
    git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
    ln -s ohmyzsh/p10k.zsh ~/.p10k.zsh