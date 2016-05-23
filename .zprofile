PS1=$'\e[0;36m%n@%m\e[0m \e[0;33m%~\e[0m 💾  '  # Custom Prompt settings

alias ll="ls -lahL"
alias con="tail -40 -f /var/log/system.log"

export EDITOR="nano"
export CLICOLOR=1
export XCODE="`xcode-select --print-path`"
export PATH="/Users/mboszko/bin:$XCODE/Tools:$PATH\
:/opt/local/bin:/opt/local/sbin"
