#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Command aliases
alias ls='ls --color=auto'
alias mksrcinfo='makepkg --printsrcinfo > .SRCINFO'
alias cleanup='profile-cleaner f && sudo journalctl --rotate && sudo journalctl --vacuum-time 1s && yay -Scc --noconfirm'
alias pgimport='pg_restore --verbose --clean --no-acl --no-owner -h localhost -U postgres -d'
alias pgexport='pg_dump -Fc --no-acl --no-owner -h localhost -U postgres'
alias pgdump='pg_dump -Fc --no-acl --no-owner --column-inserts --data-only -h localhost -U postgres'
alias mysqlimport='mysql -u root -p'
alias mysqlexport='mysqldump -u root -p'
alias svgclean='for f in *.svg ; do svgcleaner --indent=2 "$f" "$f" ; done'

# Bash Prompt
PS1="\[\e[31m\]┌\[\e[m\] \t \[\e[34m\]\u@\h\[\e[m\]\[\e[32m\]:\w\[\e[m\]\n\[\e[31m\]└╼\[\e[m\] "

# Tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

# Completion
source /usr/share/bash-completion/bash_completion

# Chruby
source /usr/share/chruby/chruby.sh
source /usr/share/chruby/auto.sh

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

# Local packages
export PATH="$HOME/.local/bin:$PATH"

# Local vessel path
export VESSEL_PATH="$HOME/Projects/Vue/vessel"

# Return if execution string present
[[ $BASH_EXECUTION_STRING ]] && return

# Clear screen when switching to bash
if [ $CLEAR_SCREEN ]; then
  printf "\033c";
fi

# Run fish as interactive shell
if [ ! $STARTED_FISH ]; then
  exec fish;
fi
