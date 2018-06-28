# This is the `defaults` template

# bash prompt show the bunny if it's mboszko (me), or to take out the bunny
#   and add the username if it's not me, say if I'm working as root
export PS1='$(if [[ $USER == mboszko ]]; then  echo "\[\e[36m\]\h:\[\e[m\]\[\e[33m\]\W 🐇  \$ \[\e[m\]"; else echo "\[\e[36m\]\u@\h:\[\e[m\]\[\e[33m\]\W \$ \[\e[m\]"; fi)'

# Terminal editor, colors
export EDITOR="bbedit"
export CLICOLOR=1

# Basic PATH stuff
export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export TEMP="$HOME/tmp"

# Edit this file
# usage: type `profile` in Terminal
alias profile="bbedit ~/.bashrc"

# Navigate to location
alias home="cd ~"
alias desktop="cd ~/Desktop/"
alias dev="cd ~/dev/"

# Navigate to project directory
# alias ds="clear && cd ~/Documents/Repos/design-system"
# alias docs="clear && cd ~/Documents/Repos/design-system-docs"

# MacOS System
alias showhiddenfiles="defaults write com.apple.finder AppleShowAllFiles YES" # requires Finder relaunch
alias hidehiddenfiles="defaults write com.apple.finder AppleShowAllFiles NO" # requires Finder relaunch

# Environment variables
# export SOME_SECRET_PASSWORD="password123!"

# Better directory lists, console, and top presets
alias ll="ls -lahL"
alias con="tail -40 -f /var/log/system.log"
alias ttop="top -d -u -s 10"

# Lets you type part of a command, and ↑ ↓ will search history for a match
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# Python and Virtual Environment defaults
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PYTHONVER=3.7
export PYTHON=python${PYTHONVER}
export PROJECT_HOME="$HOME/dev"
export WORKON_HOME="$HOME/.virtualenvs"
export VIRTUALENVWRAPPER_TMPDIR="$WORKON_HOME/tmp"
export VIRTUALENVWRAPPER_PYTHON=`which python3`
source /Library/Frameworks/Python.framework/Versions/3.6/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
# Python Virtual Environments - second set of instructions
# - install virtualenv and virtualenvwrapper
# export PATH=/Library/Frameworks/Python.framework/Versions/3.7/bin:$PATH
# export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
# export WORKON_HOME=$HOME/.virtualenvs
# source /Library/Frameworks/Python.framework/Versions/3.7/bin/virtualenvwrapper.sh

# Xcode stuff
# export XCODE="`xcode-select --print-path`"
# export PATH="/Users/mboszko/bin:$XCODE/Tools:$PATH\
# :/opt/local/bin:/opt/local/sbin"

# The Omni Group
# Warning, since they like to use `zsh`,
# in case a sysadmin comes to work on my Mac, they will know it's `bash`
# WHITE='\033[1;37m'
# RED='\033[0;31m'
# NC='\033[0m' # No Color
# ON_RED='\e[101m'
# printf "${RED}This Terminal is running${NC} ${WHITE}${ON_RED} BASH ${NC}\n"

# Ruby Virtual Machine
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
# Load RVM into a shell session *as a function*
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
