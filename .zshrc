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
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails3 ruby bundler gem git github rvm )

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/home/murkin/.rvm/gems/ruby-1.8.7-p334/bin:/home/murkin/.rvm/gems/ruby-1.8.7-p334@global/bin:/home/murkin/.rvm/rubies/ruby-1.8.7-p334/bin:/home/murkin/.rvm/bin:/home/murkin/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
