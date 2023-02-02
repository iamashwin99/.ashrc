if [ -n "$BASH_VERSION" ]; then
    rc_file=~/.bashrc
elif [ -n "$ZSH_VERSION" ]; then
    rc_file=~/.zshrc
else
    rc_file=~/.bashrc
fi

if [ -z "$ASHRC" ]; then
export ASHRC=$HOME/.ashrc
fi

# Install booleans
# if SKIP_OH_MY_ZSH is not set then install oh-my-zsh through script at ohmyzsh/install.sh
[ -z "$SKIP_OH_MY_ZSH" ] &&  . ohmyzsh/install.sh

# Setup .ashrc in $rc_file
echo -e "\033[36mSetting up .ashrc\033[0m"
echo -e "\n###### Ashwin's Customizations ######\n[[ ! -f  $ASHRC/.ashrc ]] || . $ASHRC/.ashrc" >> $rc_file
