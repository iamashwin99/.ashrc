
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