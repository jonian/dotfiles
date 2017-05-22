#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

PS1="\[\e[31m\]┌\[\e[m\] \t \[\e[34m\]\u@\h\[\e[m\]\[\e[32m\]:\w\[\e[m\]\n\[\e[31m\]└╼\[\e[m\] "

# Ruby Gems
export GEM_HOME=$(ruby -e 'print Gem.user_dir')
export PATH="$GEM_HOME/bin:$PATH"

# Chruby
source /usr/share/chruby/chruby.sh
source /usr/share/chruby/auto.sh

# Node JS
export PATH="$HOME/.node_modules/bin:$PATH"

# Composer packages
export COMPOSER_HOME="$HOME/.composer"
export PATH="$COMPOSER_HOME/vendor/bin:$PATH"

# Local packages
export PATH="$HOME/.local/bin:$PATH"

# Tilix
source /etc/profile.d/vte.sh

# Completion
source /usr/share/bash-completion/bash_completion

# Oh My Git
source /opt/oh-my-git/prompt.sh

