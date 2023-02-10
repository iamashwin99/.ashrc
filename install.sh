# stop on error
set -e

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
[ -z "$SKIP_OH_MY_ZSH" ] &&  . $ASHRC/ohmyzsh/install.sh
# install zoxd
[ -z "$SKIP_ZOXD" ] &&  . $ASHRC/zoxd/install.sh
# install exa
[ -z "$SKIP_EXA" ] &&  . $ASHRC/exa/install.sh


# Install configs
source $ASHRC/configs/default-configs.sh



# Setup .ashrc in $rc_file
echo -e "\033[36mSetting up .ashrc\033[0m"
echo -e "\n###### Ashwin's Customizations ######\n[[ ! -f  $ASHRC/ashrc.sh ]] || . $ASHRC/ashrc.sh" >> $rc_file
