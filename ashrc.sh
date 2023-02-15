###### Ashwin's Customizations ######
# Preloads
# load oh-my-zsh if it exists at ~/.ohmyzshrc  and ZSH_VERSION is set
if [ -f $HOME/.ohmyzshrc ] && [ -n "$ZSH_VERSION" ]; then
  . $HOME/.ohmyzshrc
  # Enable p10k config 
  [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
fi



# aliases
# if micromamba exists, alias conda to micromamba
if [ -x "$(command -v micromamba)" ]; then
  alias conda="micromamba"
fi

# redefine ls and l  ( use exa if available )
if [ -x "$(command -v exa)" ]; then
    alias ls="exa --icons --git --color=always"
    alias l="exa --icons --long --all --group --color=always"
else
    # ls with colors
    alias ls="ls --color=auto"
    # ls -lah returns long listing with human readable sizes
    alias l="ls -lah"
fi

# Forward authenticating agent ( makesure the key is availalbe ins ssh-add -L , if not add it)
alias ssh="ssh -XA"

# alias to spack setup env
alias spackitup='source share/spack/setup-env.sh' 
# alias to load octopus
alias loadopus='CURDIR=$(pwd); cd ~/spackbox/spacklatest; spackitup; spack env activate octopus_latest; spack load octopus; cd "$CURDIR"'
# if batcat or bat exits, alias it to c else alias it to less
if [ -x "$(command -v batcat)" ]; then
  alias c='batcat'
elif [ -x "$(command -v bat)" ]; then
  alias c='bat'
else
  alias c='less -RS'
fi
# alias pforest to ps auxwww
alias pforest='ps auxww --forest |c'

# alias to download octopus
alias cloneoctopus='git clone https://gitlab.com/octopus-code/octopus.git'
# alias to clone spack
alias clonespack='git clone https://github.com/spack/spack.git'


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
    source $ASHRC/ashrc.sh
}
# Module (lmod) wrapper to backup FPATHs
mod() {
  # Backup the current FPATH
  FPATH_BKP=$FPATH

  # Run the "module" command with the provided arguments
  module "$@"

  # Check if the backed-up FPATH is already in the current FPATH
  if [[ ":$FPATH:" != *":$FPATH_BKP:"* ]]; then
    # Append the backed-up FPATH to the current FPATH
    FPATH=$FPATH_BKP:$FPATH
  fi
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
  if [ -n "$ZSH_VERSION" ]; then
    eval "$(zoxide init zsh)"
  else
    eval "$(zoxide init bash)"
  fi
  # alias cd to z
  alias cd='z'
fi
