alias ll="ls -lahL"
alias con="tail -40 -f /var/log/system.log"

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

export PS1="\[\e[0;36m\]\h\[\e[m\] \W 🐇"
export EDITOR="nano"
export CLICOLOR=1
export XCODE="`xcode-select --print-path`"
export PATH="/Users/mboszko/bin:$XCODE/Tools:$PATH\
:/opt/local/bin:/opt/local/sbin"
