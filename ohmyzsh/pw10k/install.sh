#!/bin/zsh


# Install pwerlevel10k
# if folder $ZSH_CUSTOM/themes/powerlevel10k is not present then clone  powerlevel10k and link p10k.zsh to ~/.p10k.zsh
if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k" ]; then
    echo -e "\033[36mInstalling powerlevel10k\033[0m"
    git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
    ln -s $ASHRC/ohmyzsh/pw10k/p10k.zsh ~/.p10k.zsh
fi