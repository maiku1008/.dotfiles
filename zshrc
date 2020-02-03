# Path to your oh-my-zsh installation.
export ZSH="/Users/michael.cuffaro/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"
ZSH_THEME="robbyrussell"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  virtualenvwrapper
  fzf
)

# User configuration

# Environment Variables

# Golang
export GOBIN="/Users/michael.cuffaro/go/bin"
export GOPATH="/Users/michael.cuffaro/go"
export PATH=$PATH:$GOBIN

# Colorized go test
go_test() {
  go test $* | sed ''/PASS/s//$(printf "\033[32mPASS\033[0m")/'' | sed ''/SKIP/s//$(printf "\033[34mSKIP\033[0m")/'' | sed ''/FAIL/s//$(printf "\033[31mFAIL\033[0m")/'' | sed ''/FAIL/s//$(printf "\033[31mFAIL\033[0m")/'' | GREP_COLOR="01;33" egrep --color=always '\s*[a-zA-Z0-9\-_.]+[:][0-9]+[:]|^'
}

# Ruby
export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH

# LANGUAGE
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

# virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Workspace
source /usr/local/bin/virtualenvwrapper.sh

# Protocol buffer path for gRPC
export PATH=$PATH:/Users/michael.cuffaro/apps/protoc-3.10.0-osx-x86_64/bin

# Editor
export EDITOR=vim

# Eval

# The Fuck
eval $(thefuck --alias)

# Jump
eval "$(jump shell)"

# Aliases

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# Move next only if `homebrew` is installed

# Docker aliases
alias dco='docker-compose'
alias dcbb="docker-compose build base"
alias dcb="docker-compose build"
alias dcup='docker-compose up'
alias dcupd='docker-compose up -d'
alias dcub="docker-compose up --build"
alias dcs="docker-compose stop"
alias dce="docker-compose exec"
alias dcr='docker-compose restart'
alias dcps='docker-compose ps'
alias dcrm='docker-compose rm'
alias dcrun='docker-compose run'
alias dcl='docker-compose logs'
alias dclf='docker-compose logs -f'

# Vagrant Aliases
alias vdf='unset ANSIBLE_HOST_KEY_CHECKING && vagrant destroy -f'
alias vu='vagrant up'

# Helper Script Aliases
alias vr='. /Users/michael.cuffaro/.scripts/vagrant_local_refresh.sh'

# Helper Aliases
alias kh='vim ~/.ssh/known_hosts'
alias zshrc='vim ~/.zshrc'
alias srczsh='source ~/.zshrc'

# Python
alias pip='pip3'
alias python='python3'

# Sublime Text 3
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# Add Visual Studio Code (code)
alias code='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'

source $ZSH/oh-my-zsh.sh
