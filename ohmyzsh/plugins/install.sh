#!/bin/zsh

# installd zsh-syntax-highlighting
# if folder $ZSH_CUSTOM/plugins/zsh-syntax-highlighting is not present then clone zsh-syntax-highlighting
if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
    # echo installing with cyan color and reset color
    echo -e "\033[36mInstalling zsh-syntax-highlighting\033[0m"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

# installd zsh-autosuggestions
# if folder $ZSH_CUSTOM/plugins/zsh-autosuggestions is not present then clone zsh-autosuggestions
if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
    echo -e "\033[36mInstalling zsh-autosuggestions\033[0m"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

# install tran
echo -e "\033[36mInstalling tran\033[0m"
curl -fsSL https://cutt.ly/tran-cli | bash

# install zoxide
echo -e "\033[36mInstalling zoxide\033[0m"
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

# install exa
# if user has sudo rights then install exa with sudo
if [ -x "$(command -v sudo)" ]; then
    echo -e "\033[36mInstalling exa\033[0m"
    sudo apt install exa
else
    echo -e "\033[36m No root permission skipping exa\033[0m"
fi