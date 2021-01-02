ZSH_THEME="spaceship"
plugins=(git)
source $ZSH/oh-my-zsh.sh
SPACESHIP_DOCKER_SHOW="false"
SPACESHIP_GIT_BRANCH_COLOR="022"
SPACESHIP_GIT_BRANCH_PREFIX=""
SPACESHIP_GIT_PREFIX="|"
SPACESHIP_DIR_COLOR="244"
SPACESHIP_GIT_PREFIX=""
SPACESHIP_EXEC_TIME_SHOW="OFF"
SPACESHIP_BATTERY_SHOW="never"
SPACESHIP_GIT_STATUS_PREFIX=" "
SPACESHIP_GIT_STATUS_SUFFIX=""
SPACESHIP_RUBY_SHOW="FALSE"

# git
alias gcm="git checkout main"
alias gpom="git pull origin main"
alias gs="git status"
alias gf="git fetch"
alias dup="docker-compose up"
alias ddown="docker-compose down"
alias gaa="git add ."
alias gcm="git commit -m"

function gco() {
  echo "-- checking $1 --"
  git checkout $1
}

function gpush() {
  echo "-- pushing $1 to origin remote --"
  git push origin $1
}

function gadd() {
  echo "-- adding files --"
  git add $@
}

# k8
alias k="kubectl"
alias kpods="kubectl get pods"
alias ksvc="kubectl get services"
alias kdpl="kubectl get deployments"
alias kdp="kubectl describe pods"
alias kns="kubectl get namespaces"

# docker
alias dup="docker-compose up"
alias ddown="docker-compose down"
alias dlint="dlint Dockerfile"

# misc
alias gt="go test"
alias npi="npm install"
alias ber="bundle exec rspec"

function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
