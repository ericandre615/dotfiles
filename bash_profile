#export PATH=/usr/local/bin:/usr/local/bin/git:/usr/local/php5/bin:/usr/local/go/bin:/Users/ericandre/Documents/idesign/projects/Development/android/tools:/Users/ericandre/Documents/idesign/projects/Development/android/platform-tools:/Users/ericandre/Documents/idesign/projects/Development/android/apache-ant-1.9.3/ant:/usr/local/share/npm/bin:/usr/bin/composer.phar:/usr/local/Cellar/node/4.2.0/libexec/npm/bin/npm:$PATH
#export GOPATH=$HOME/Documents/golang
# display archey if you have it install
# archey
export CLICOLOR=1
export LSCOLORS=dxgxxxxxgxxxxxxxxxgfxxy

alias lsa='ls -al'

# GIT
alias gs='git status'
alias gf='git fetch'
alias gp='git pull'
alias gpu='git push'
alias gall='git add -A'
alias gconf='git show config'
alias gcheck="grep -lr '<<<<<<<' ."
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
#alias glog='git log --oneline --graph --decorate'

# NPM
alias nls="npm list --depth=0"

# SSH

#chToDev() { cd ~/Documents/projects/Development/$1; }
#alias todev=chToDev
#alias cdev="cd ~/Documents/projects/Development"
