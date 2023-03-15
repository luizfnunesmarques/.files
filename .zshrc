autoload -Uz compinit && compinit
setopt PROMPT_SUBST

# sources
source ~/.kube_completion.sh
source ~/.git-prompt.sh

source ~/.kube-utils
source ~/.git-utils

source <(kubectl completion zsh)
source <(helm completion zsh)
source <(istioctl completion zsh)

# prompt
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWCOLORHINTS=1
# GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_STATESEPARATOR=" "
NEWLINE=$'\n'

# fast prompt
precmd () {  __git_ps1 "%(?.%F{green}|.%F{red}|%|)%f %B%F{240}%1~%f%b %n @ %m" "${NEWLINE}> "  }
