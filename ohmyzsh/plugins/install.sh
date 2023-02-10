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
# download https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-v0.10.1.zip
# unzip exa-linux-x86_64-v0.10.1.zip
# mv exa-linux-x86_64/bin/exa $HOME/.local/bin/exa
# mv exa-linux-x86_64/man/* /home/karnada/.local/share/man/man1
# rm -rf exa-linux-x86_64

if [ ! -x $HOME/.local/bin/exa ]; then
    echo -e "\033[36mInstalling exa\033[0m"
    wget https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-v0.10.1.zip -O /tmp/exa.zip
    unzip /tmp/exa.zip -d /tmp/exa
    mv /tmp/exa/bin/exa $HOME/.local/bin/exa
    mv /tmp/exa/man/* $HOME/.local/share/man/man1/
    rm -rf /tmp/exa
    rm /tmp/exa.zip
else
    echo -e "\033[36mexa is already installed\033[0m"
fi