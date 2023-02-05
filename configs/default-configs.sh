
# for each folder in the default-configs folder, source config.sh file
for config in $ASHRC/configs/*; do
    if [ -f "$config/config.sh" ]; then
    echo -e "\033[36mSourcing $config/config.sh\033[0m"
        . "$config/config.sh"
    fi
done