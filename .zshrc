# Path to your oh-my-zsh configuration.
ZSH=$HOME/.vim/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="../../boris"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails rails3 ruby bundler gem git github rvm )

alias heroku='nocorrect heroku'
alias gr='git remote -v'
alias ll='ls -l'

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/hOme/murkin/.rvm/gems/ruby-1.8.7-p334/bin:/home/murkin/.rvm/gems/ruby-1.8.7-p334@global/bin:/home/murkin/.rvm/rubies/ruby-1.8.7-p334/bin:/home/murkin/.rvm/bin:/home/murkin/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export EDITOR=vim

export DBUSER=murkin
export DBPASS=123123
export PGUSER=murkin
export PGPASS=123123
export MYSQLUSER=murkin
export MYSQLPASS=123123
export REDIS_URL='redis://localhost:6379'
export REDISTOGO_URL='redis://localhost:6379'

# Ruby GC settings
export RUBY_GC_MALLOC_LIMIT=90000000
export RUBY_FREE_MIN=200000

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

[ -s "/home/murkin/.scm_breeze/scm_breeze.sh" ] && source "/home/murkin/.scm_breeze/scm_breeze.sh"
