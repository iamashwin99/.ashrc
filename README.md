# .ashrc

dotfiles, just the way Ashwin likes them

Take a look at a good set of references to dot files management  [here](https://github.com/webpro/awesome-dotfiles)

# Installation:

Clone this repo to your `$HOME`

```shell
cd $HOME
git clone https://github.com/iamashwin99/.ashrc
```

Now cd into `.ashrc` and run the installer:

```shell
cd .ashrc && export ASHRC=`pwd` && source install.sh
```

or manually edit the right rc file (~/.bashrc for bash and ~/.zshrc for zsh) with the following lines:

```bash
###### Ashwin's Customizations ######
[[ ! -f ~/.ashrc/ashrc.sh ]] || source ~/.ashrc/ashrc.sh
```
or alternatively on a shared machine set it at 
```bash
###### Ashwin's Customizations ######
export ASHRC=/home/mpsddeb/karnada/.ashrc  # Path to cloned copy
alias ashitup="[[ ! -f ${ASHRC}/ashrc.sh ]] || source ${ASHRC}/ashrc.sh"
alias ashwinstmux="tmux -f ${ASHRC}/tmux/tmux.conf"
```
By default the installer and the rc file assumes that this repo is cloned at `~/.ashrc` if not, maunally edit the env variable `$ASHRC` (in terminal and the .ashrc file) to point to the correct installation location.

# Features:

## mkcd:

`mkcd` is a shell funciton that create s direcotry and then cd's into it . eg:

```shell
mkcd folderA/folderB
```

## Sprungeit

`sprungeit` is a shell function to upload a file to http://sprunge.us/ and returns its url. eg:

```shell
sprungeit config.log
```

## Auto updates:

Auto updates 20% of the times the shell is loaded ( randomly ).
can be manually called via the bash function:

```shell
updateashrc
```

# TODO

- [ ] Add zsh configs
- [ ] [Oh My Zsh + PowerLevel10k](https://dev.to/abdfnx/oh-my-zsh-powerlevel10k-cool-terminal-1no0)
- [ ] nvm and node
- [ ] [tmux powerlevel10k](https://blog.bapt.name/2020/04/25/terminal-setup-zsh-tmux-powerlevel10k/)
- [ ] [Micromamba](https://mamba.readthedocs.io/en/latest/installation.html)
- [ ] [Zoxide](https://github.com/ajeetdsouza/zoxide)
- [ ] [Antigen](https://github.com/zsh-users/antigen)
- [ ] Install important apps like : tldr, rg, fd, batcat https://github.com/ibraheemdev/modern-unix
- [ ] Add git configs
- [ ] Save $ASHRC from before installing
- [ ] automate config for [vscode+tmux](https://techspresso.dev/posts/tmux-and-vscode-persist-terminals-for-productivity-and-profit/)
