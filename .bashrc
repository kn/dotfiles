###
# Aliases
###

# Type: Arguments
alias ls='ls -laGh'

# Type: Shorten
alias cdd='cd -'
alias ..='cd ..'
alias v='vim'

###
# Config
###

# git autocomplete
source ~/.git-completion.bash
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\W$(__git_ps1)]\$ '

###
# Env
###

EDITOR=vim

##
# Discover commonly used commands
##

function discover {
  history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head
}
