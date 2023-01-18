# .ashrc
dotfiles, just the way Ashwin likes them

Take a look at a good set of references to dot files management  [here](https://github.com/webpro/awesome-dotfiles)

# Installation:
Clone this repo to your `$HOME`
```shell
cd $HOME
git clone https://github.com/iamashwin99/.ashrc
```
Now run the installer:

```shell
chmod +x  install.sh
./install.sh
```
or manually edit the right rc file (~/.bashrc for bash and ~/.zshrc for zsh) with the following lines:
```bash
###### Ashwin's Customizations ######
[[ ! -f ~/.ashrc/.ashrc ]] || . ~/.ashrc/.ashrc
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
 
