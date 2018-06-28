# Edit this file
alias edprofile="bbedit ~/.bashrc" # usage: type `aliases` in Terminal

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

# Python Virtual Environments
# - install virtualenv and virtualenvwrapper
export PATH=/Library/Frameworks/Python.framework/Versions/3.7/bin:$PATH
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
source /Library/Frameworks/Python.framework/Versions/3.7/bin/virtualenvwrapper.sh

# Better list details and colors
alias ll="ls -lahL"

# Console quick view
alias con="tail -40 -f /var/log/system.log"

# Lets you type part of a command, and ↑ ↓ will search history for a match
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# My bash prompt
export PS1="\[\e[0;36m\]\u@\h\[\e[m\] \[\e[0;33m\]\W\[\e[m\] 🐇  "

# Editor - Install BBEdit command line tools
export EDITOR="bbedit"

# Color in the shell
export CLICOLOR=1

# Xcode stuff
export XCODE="`xcode-select --print-path`"
export PATH="/Users/mboszko/bin:$XCODE/Tools:$PATH\
:/opt/local/bin:/opt/local/sbin"

# The Omni Group warning, since they like to use ZSH,
# and if a sysadmin comes to work on my Mac, they will know
WHITE='\033[1;37m'
RED='\033[0;31m'
NC='\033[0m' # No Color
ON_RED='\e[101m'
printf "${RED}This Terminal is running${NC} ${WHITE}${ON_RED} BASH ${NC}\n"
