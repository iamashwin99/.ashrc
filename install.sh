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

echo -e "\n###### Ashwin's Customizations ######\n[[ ! -f  $ASHRC/.ashrc ]] || . $ASHRC/.ashrc" >> $rc_file
