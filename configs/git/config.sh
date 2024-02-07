
# configure git user name and email
git config --global user.name "iamashwin99"
git config --global user.email "ashwin-kumar.karnad@mpsd.mpg.de"

# configure git to use vim as default editor
git config --global core.editor "vim"

# configure git to use vimdiff as default merge tool
git config --global merge.tool vimdiff

# add alias to lg for pretty log
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"