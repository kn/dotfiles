###
# Aliases
###

# Type: Arguments
alias ls='ls -laGh'
alias tail='tail -F'

# Type: Shorten
alias cdd='cd -'
alias ..='cd ..'
alias color='cd ~/workspace/color'
alias f='find . -name'
alias g='git'
alias ip='ipython --profile=kn'
alias v='vim'
alias w='workon'
alias d='deactivate'
alias p='python'
alias mkvirtualenv='mkvirtualenv --no-site-packages'

alias r='rake'
alias be='bundle exec'
alias ber='bundle exec rake'
alias bi='bundle install'

# ADAM
ADAM_JAR=/Users/kn/workspace/adam/adam-cli/target/adam-0.7.3-SNAPSHOT.jar
alias adam='java -Xmx4g -jar $ADAM_JAR'

###
# Config
###

PS1="\u:\W\$(vcprompt -f [%b])$ "

# git autocomplete
complete -o default -W "\$(git branch 2>/dev/null | cut -c 3-)" git

###
# Env
###

# For vcftools
export PERL5LIB=/usr/local/vcftools/perl

JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_40.jdk/Contents/Home
SCALA_HOME=/usr/local/share/scala
STORM_HOME=/usr/local/storm
HADOOP_HOME=/usr/local/hadoop
GATK_HOME=/usr/local/GenomeAnalysisTK
SNPEFF_HOME=/usr/local/snpEff
BEDTOOLS_HOME=/usr/local/bedtools
VCFTOOLS_HOME=/usr/local/vcftools
SAMTOOLS_HOME=/usr/local/samtools
SPARK_HOME=/usr/local/spark
PERL5LIB=$VCFTOOLS_HOME/perl
TABIX_HOME=/usr/local/tabix
MESOS_HOME=/usr/local/mesos
M2_HOME=/usr/local/apache-maven/apache-maven-3.2.1
M2=$M2_HOME/bin
CSSHX_HOME=/usr/local/csshX
REDIS_HOME=/usr/local/redis
GOROOT=/usr/local/go
GETTEXT_HOME=/usr/local/Cellar/gettext/0.19.3_1

PATH=/usr/local/bin:$PATH
PATH=$PATH:$SCALA_HOME/bin # Add Scala bin path
PATH=$PATH:./node_modules/.bin # Add node modules hidden bin relative path
PATH=$PATH:$STORM_HOME/bin # Add storm bin path
PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin # Add hadoop bin path
PATH=$PATH:$BEDTOOLS_HOME/bin # Add bedtools bin path
PATH=$PATH:$VCFTOOLS_HOME/bin # Add vcftools bin path
PATH=$PATH:$SAMTOOLS_HOME/bin # Add samtools bin path
PATH=$PATH:$TABIX_HOME # Add tabix bin path
PATH=$PATH:$MESOS_HOME/build/bin # Add mesos bin path
PATH=$PATH:$M2 # Add maven bin path
PATH=$PATH:$CSSHX_HOME # Add csshX bin path
PATH=$PATH:$REDIS_HOME/src # Add redis bin path
PATH=$PATH:$GOROOT/bin # Add go bin path
PATH=$PATH:$SPARK_HOME/bin # Add spark bin path
PATH=$PATH:$GETTEXT_HOME/bin # Add gettext bin path

#PYTHONPATH=$PYTHONPATH:/Library/Python/2.7/site-packages

EDITOR=vim
WORKON_HOME=~/.virtualenvs

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.
#[[ -s "/usr/local/bin/virtualenvwrapper.sh" ]] && . "/usr/local/bin/virtualenvwrapper.sh"  # This loads virtualenv wrapper.

##
# Discover commonly used commands
##

function discover {
  history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head
}

###
# Automatically activate virtualenv if appropriate.
# This assumes virtualenvs are either:
#   - in $WORKON_HOME folder, in which case it uses workon command to activate the virtualenv.
#   - in ./local folder, in which case it uses ./setenv.sh to activate the virtualenv.
# Note: This will have a conflict if other script overrides cd command.
# e.g. rvm overrides cd command for local .rvm file.
###

cd() {
  if builtin cd "$@"; then
    if [[ -s ./setenv.sh ]]; then
      if [[ "$(basename ./${VIRTUAL_ENV})" != "virtualenv" ]]; then
        if [[ "$@" != "." ]]; then
          source ./setenv.sh "";
          export DJANGO_SETTINGS_MODULE=django_projects.clinical.settings
        fi
      fi
    elif [[ -s ${WORKON_HOME}/$(basename ${PWD}) ]]; then
      if [[ "$(basename ./${VIRTUAL_ENV})" != "$(basename ${PWD})" ]]; then
        workon $(basename ${PWD});
      fi
    fi
  else
    return $?;
  fi
}

export NVM_DIR="/Users/kn/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
