#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Command aliases
alias ls='ls --color=auto'
alias mksrcinfo='makepkg --printsrcinfo > .SRCINFO'
alias update='aurman -Syu'
alias cleanup='profile-cleaner f && sudo journalctl --rotate && sudo journalctl --vacuum-time 1s && aurman -Scc --noconfirm'
alias pgimport='pg_restore --verbose --clean --no-acl --no-owner -h localhost -U postgres -d'
alias pgexport='pg_dump -Fc --no-acl --no-owner -h localhost -U postgres'

# Environment Variables
export HISTCONTROL=ignoredups

# Bash Prompt
PS1="\[\e[31m\]┌\[\e[m\] \t \[\e[34m\]\u@\h\[\e[m\]\[\e[32m\]:\w\[\e[m\]\n\[\e[31m\]└╼\[\e[m\] "

# Chruby
source /usr/share/chruby/chruby.sh
source /usr/share/chruby/auto.sh

# Tilix
source /etc/profile.d/vte.sh

# Completion
source /usr/share/bash-completion/bash_completion

# Oh My Git
source /opt/oh-my-git/prompt.sh

# Ruby Gems
export GEM_HOME=$(ruby -e 'print Gem.user_dir')
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
export PYTHONUSERBASE=~/.pip
export PATH="$PYTHONUSERBASE/bin:$PATH"

# Local packages
export PATH="$HOME/.local/bin:$PATH"
