# ----------
# This is from the Apple-provided /etc/zshrc
# ----------

# Correctly display UTF-8 with combining characters.
if [ "$TERM_PROGRAM" = "Apple_Terminal" ]; then
	setopt combiningchars
fi

disable log

[ -r "/etc/zshrc_$TERM_PROGRAM" ] && . "/etc/zshrc_$TERM_PROGRAM"

# ----------
# Put this stuff in /etc/zshrc, for all users
# ----------

# This is local on `firebook`

# zsh options
setopt NO_CASE_GLOB
setopt AUTO_CD
# save command history when closing Terminal
setopt EXTENDED_HISTORY
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history
setopt APPEND_HISTORY
# adds commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY
SAVEHIST=5000
HISTSIZE=2000
# expire duplicates first
setopt HIST_EXPIRE_DUPS_FIRST
# do not store duplications
setopt HIST_IGNORE_DUPS
#ignore duplicates when searching
setopt HIST_FIND_NO_DUPS
# removes blank lines from history
setopt HIST_REDUCE_BLANKS
# Correct and suggest commands
setopt CORRECT
setopt CORRECT_ALL

# Tab completions
# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'
# partial completion suggestions
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix
# completion startup
zstyle :compinstall filename '/Users/mboszko/.zshrc'
autoload -Uz compinit
compinit
# Lets you type part of a command, and ↑ ↓ will search history for a match
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward


# PROMPT
# Show the bunny if it's mboszko (me), or if it's not me,
#   take out the bunny and add the username, say, if I'm working as root
#   %(?.%F{green}√.%F{red}x%?)%f - Green check if last command result success,
#           or red 'x' with error code of last command if failure.
#   %F{6} - cyan
#   %F{3} - amber
#   %f    - reset to default color
#   %n    - username
#   %m    - hostname up to the first ‘.’
#   %1~   - working directory, first component, and if the current working
#           directory starts with $HOME, that part is replaced by a ‘~’
#   %#    - % prompt normally, # if privileged user
#   🐇    - white rabbit
export PROMPT='$(if [[ $USER == mboszko ]]; then  echo "%(?.%F{green}√.%F{red}x%?)%f %F{6}%m:%F{3}%1~ 🐇 %# %f"; else echo "%(?.%F{green}√.%F{red}x%?)%f %F{6}%n@%m:%F{3}%1~ %# %f"; fi)'
# Git integration, show the repo and branch in the right side prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='bbedit'
else
  export EDITOR='nano'
fi

# Terminal colors
export CLICOLOR=1

# Basic PATH stuff
export PATH="${HOME}/bin:/usr/local/bin:/usr/local/sbin:${PATH}"
export TEMP="${HOME}/tmp"

# Navigate to location
alias home="cd ~"
alias desktop="cd ~/Desktop/"
alias dev="cd ~/dev/"

# Navigate to project directory
# alias ds="clear && cd ~/Documents/Repos/design-system"
# alias docs="clear && cd ~/Documents/Repos/design-system-docs"

# Environment variables
# export SOME_SECRET_PASSWORD="password123!"

# Better directory lists, console, and top presets
alias ll="ls -lahL"
alias con="tail -40 -f /var/log/system.log"
alias ttop="top -d -u -s 10"
