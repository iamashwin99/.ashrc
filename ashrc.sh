###### Ashwin's Customizations ######
# Preloads
# load oh-my-zsh if it exists at ~/.ohmyzshrc
[[ ! -f  $HOME/.ohmyzshrc ]] || . $HOME/.ohmyzshrc





# aliases
# if micromamba exists, alias conda to micromamba
if [ -x "$(command -v micromamba)" ]; then
  alias conda="micromamba"
fi
# ls with colors
alias ls="ls --color=auto"
# ls -lah returns long listing with human readable sizes
alias l="ls -lah"
# alias to spack setup env
alias spackitup='source share/spack/setup-env.sh' 
# alias to load octopus
alias loadopus='CURDIR=$(pwd); cd ~/spackbox/spacklatest; spackitup; spack env activate octopus_latest; spack load octopus; cd "$CURDIR"'
# alias to batcat
alias c='batcat'
# alias to download octopus
alias cloneoctopus='git clone https://gitlab.com/octopus-code/octopus.git'

# ENVs
export EDITOR='code' # choose vscode as the default editor
export ASHRC=$HOME/.ashrc
# Functions
# Create a new directory and enter it
function mkcd() {
  mkdir -p "$@" && cd "$@"
}

# Upload a file to http://sprunge.us/ and return its url
function sprungeit {
    cat $1 | curl -F 'sprunge=<-' http://sprunge.us
}

# Funciton to update the repo
function updateashrc {
    git -C $ASHRC pull -q --ff-only 
}

# Startup commands
# Update the repo (only 20 % of the time)
if [ $(($RANDOM % 100)) -lt 20 ]; then
  updateashrc
fi


# if conda exists, activate base
if [ -x "$(command -v conda)" ]; then
  conda activate base
fi

# Add zoxide if exists
if command -v zoxide > /dev/null; then
    eval "$(zoxide init zsh)"
fi