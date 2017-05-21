#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

PS1="\[\e[31m\]┌\[\e[m\] \t \[\e[34m\]\u@\h\[\e[m\]\[\e[32m\]:\w\[\e[m\]\n\[\e[31m\]└╼\[\e[m\] "

PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export GEM_HOME=$(ruby -e 'print Gem.user_dir')

PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

PATH="$HOME/.local/bin:$PATH"

source /etc/profile.d/vte.sh
source /usr/share/bash-completion/bash_completion
source /opt/oh-my-git/prompt.sh

