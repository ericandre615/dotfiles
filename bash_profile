archey

export PATH=$PATH:/usr/local/sbin:~/Development/bin:~/bin
export GOPATH=$HOME/Documents/golang
export CLICOLOR=1
export LSCOLORS=dxgxxxxxgxxxxxxxxxgfxxy

# SYSTEM
# use vi commands in terminal
set -o vi
alias lsa='ls -al'
alias showall='defaults write com.apple.finder AppleShowAllFiles YES'
alias hideall='defaults write com.apple.finder AppleShowAllFiles NO'

# Command History
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# GIT
source ~/git-completion.bash
source ~/git-prompt.sh
alias gs='git status'
alias gf='git fetch'
alias gp='git pull'
alias gpu='git push'
alias gall='git add -A'
alias gconf='git show config'
alias gflush='git rm --cached -r .'
alias gcheck="grep -lr '<<<<<<<' ."
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias startes6="git clone https://github.com/ericandre615/es6starter.git"
alias gitresetlatest="git fetch; git reset --hard origin/$(git symbolic-ref --short HEAD)"

# NPM
alias nls="npm list --depth=0"

# Docker
alias docker-remove-containers="docker rm -v $(docker ps -a -q -f status=exited)"
alias docker-remove-images="docker rmi $(docker images -f "dangling=true" -q)"
alias docker-delete="docker-remove-containers && docker-remove-images"
alias docker-shell="docker exec -it $(docker ps | grep user-service | awk '{print $1}') bash"

# SSH
alias apiserver="ssh eandre@ivlapi01d"
alias dbserver="ssh eandre@ivlanal01d"
alias corpserver="ssh -i ~/.ssh/aws-ivl.key ec2-user@ivlcorp"

# Other
alias eslintme="cp ~/Development/dotfiles/eslintrc ./.eslintrc"
alias econfme="cp ~/Development/dotfiles/.editorconfig ./.editorconfig"
alias weather="curl -i wttr.in"

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
eval $(/usr/libexec/path_helper -s)
