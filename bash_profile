archey

export PATH=$PATH:/usr/local/sbin:~/Development/bin
export GOPATH=$HOME/Documents/golang
export CLICOLOR=1
export LSCOLORS=dxgxxxxxgxxxxxxxxxgfxxy

# SYSTEM
alias lsa='ls -al'
alias showall='defaults write com.apple.finder AppleShowAllFiles YES'
alias hideall='defaults write com.apple.finder AppleShowAllFiles NO'
#alias fuck= '$(thefuck $(fc -ln -1))'
eval "$(thefuck --alias)"

# GIT
source ~/git-completion.bash
source ~/git-prompt.sh
alias gs='git status'
alias gf='git fetch'
alias gp='git pull'
alias gpu='git push'
alias gall='git add -A'
alias gconf='git show config'
alias gcheck="grep -lr '<<<<<<<' ."
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias startes6="git clone https://github.com/ericandre615/es6starter.git"
#alias glog='git log --oneline --graph --decorate'

# NPM 
alias nls="npm list --depth=0"

# SSH
alias apiserver="ssh eandre@ivlapi01d"
alias dbserver="ssh eandre@ivlanal01d"
alias corpserver="ssh -i ~/.ssh/aws-ivl.key ec2-user@ivlcorp"

# Other
alias eslintme="cp ~/Development/dotfiles/eslintrc ./.eslintrc"
alias econfme="cp ~/Development/dotfiles/.editorconfig ./.editorconfig"
#TERM
BLACK="\[$(tput setaf 0)\]"
RED="\[$(tput setaf 1)\]"
GREEN="\[$(tput setaf 2)\]"
YELLOW="\[$(tput setaf 3)\]"
PURPLE="\[$(tput setaf 4)\]"
PINK="\[$(tput setaf 5)\]"
BLUE="\[$(tput setaf 6)\]"
WHITE="\[$(tput setaf 7)\]"

PS1="[${GREEN}\u@\H${WHITE}] ${BLUE}\W${YELLOW}\$(__git_ps1)${WHITE}\$ "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
