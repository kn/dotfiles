###
# Aliases
###

# Type: Arguments
alias ls='ls -laGh'
alias tail='tail -F'

# Type: Shorten
alias cdd='cd -'
alias ..='cd ..'
alias f='find . -name'
alias g='git'
alias v='vim'

alias r='rake'
alias rmig='rake db:migrate'
alias be='bundle exec'
alias ber='bundle exec rake'
alias bi='bundle install'

# Type: Scripting
function discover {
  history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head
}

###
# Config
###

PS1="\u:\W\$(vcprompt -f [%b])$ "

# git autocomplete
complete -o default -W "\$(git branch 2>/dev/null | cut -c 3-)" git

###
# Env
###

SCALA_HOME=/usr/local/share/scala
PATH=/usr/local/bin:$PATH
PATH=$PATH:$SCALA_HOME/bin # Add Scala bin path
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:./node_modules/.bin # Add node modules hidden bin relative path
EDITOR=vim

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.
