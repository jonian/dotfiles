#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Command aliases
alias ls='ls --color=auto'

# Tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

# Completion
source /usr/share/bash-completion/bash_completion

# Frum
eval "$(frum init)";

# PHP Brew
export PHPBREW_RC_ENABLE=1
source ~/.phpbrew/bashrc

# Bash Variables
export HISTCONTROL=ignoreboth:erasedups

# Set editor
export EDITOR="nvim"

# Ruby Gems
export GEM_HOME=$(ruby -e 'puts Gem.user_dir')
export PATH="$GEM_HOME/bin:$PATH"

# Node JS
export NPM_HOME="$HOME/.node_modules"
export PATH="$NPM_HOME/bin:$PATH"

# Yarn
export YARN_HOME="$HOME/.yarn"
export PATH="$YARN_HOME/bin:$PATH"

# Composer packages
export COMPOSER_HOME="$HOME/.composer"
export PATH="$COMPOSER_HOME/vendor/bin:$PATH"

# Python PIP packages
export PIP_USER=yes
export PYTHONUSERBASE="$HOME/.pip"
export PATH="$PYTHONUSERBASE/bin:$PATH"

# Android Studio
export ANDROID_HOME="$HOME/Android/Sdk"
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin:$PATH"

# Go Modules
export GOPATH=$HOME/.golang
export PATH=$PATH:$GOPATH/bin

# Local packages
export PATH="$HOME/.local/bin:$PATH"

# Local vessel path
export VESSEL_PATH="$HOME/Projects/Vue/vessel"

# Return if execution string present
[[ $BASH_EXECUTION_STRING ]] && return

# Execute when switching to bash
if [ $STARTED_BASH ]; then
  # Clear screen on switch
  printf "\033c";

  # Starship
  eval "$(starship init bash)";
fi

# Run fish as interactive shell
if [ ! $STARTED_FISH ]; then
  exec fish;
fi
