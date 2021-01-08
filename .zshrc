# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/mboszko/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="agnoster"
DEFAULT_USER=$(whoami)
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="awesome-patched"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_DIR_SHOW_WRITABLE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# POWERLEVEL9K_HOME_ICON=🐇
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs virtualenv newline)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-open zsh-autosuggestions virtualenv)

source $ZSH/oh-my-zsh.sh

# User configuration

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="bbedit ~/.zshrc"
alias ohmyzsh="bbedit ~/.oh-my-zsh"

export COMPUTER_NAME="FireBook"

export LESS="-EFRSX"

export PATH="/users/mboszko/Applications:${PATH}"

# Python and Virtual Environment defaults
export PYTHONVER=3.8
export PYTHON=python${PYTHONVER}
export PATH="/Library/Frameworks/Python.framework/Versions/${PYTHONVER}/bin:${PATH}"
export PATH="/Library/Frameworks/Python.framework/Versions/${PYTHONVER}/lib/${PYTHON}/site-packages:${PATH}"
export PROJECT_HOME="${HOME}/dev"
export WORKON_HOME="${HOME}/.virtualenvs"
export VIRTUALENVWRAPPER_TMPDIR="${WORKON_HOME}/tmp"
export VIRTUALENVWRAPPER_PYTHON=`which python3`
source "/Library/Frameworks/Python.framework/Versions/${PYTHONVER}/bin/virtualenvwrapper.sh"
export PIP_VIRTUALENV_BASE="${WORKON_HOME}"
export PIP_RESPECT_VIRTUALENV=true
# Because I can never remember the 'deactivate' command
alias workoff="deactivate"
alias python=$PYTHON

# Xcode stuff
export XCODE="`xcode-select --print-path`"
export PATH="${HOME}/bin:${XCODE}/Tools:${PATH}:/opt/local/bin:/opt/local/sbin"

# Ruby Virtual Machine
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="${PATH}:${HOME}/.rvm/bin"
# Load RVM into a shell session *as a function*
[[ -s "${HOME}/.rvm/scripts/rvm" ]] && source "${HOME}/.rvm/scripts/rvm"

# added by travis gem
[ -f ${HOME}/.travis/travis.sh ] && source ${HOME}/.travis/travis.sh

# Add dripbot path
PATH="${HOME}/Omni Checkouts/mark/dripbot:${PATH}"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Omni Group work aliases
alias tos-deliverables-folder-init="mkdir elements photos elements/rough"

# Media shortcuts
alias yt-dl="youtube-dl --write-description --write-thumbnail --format mp4 --all-subs --embed-subs --add-metadata"
alias yt-audio="youtube-dl -x --audio-format m4a --embed-thumbnail"
alias yt-poster="youtube-dl --write-all-thumbnails --skip-download"
alias pshop="open -a 'Adobe Photoshop CC 2019'"

# Make a directory and immediately change into it
function mkdircd () { mkdir -p "$@" && cd "$@"; }

# Environment variables
# export SOME_SECRET_PASSWORD="password123!"

# Better directory lists, console, and top presets
alias ll="ls -lahL"
alias ttail="tail -40 -f /var/log/system.log"
alias ttop="top -d -u -s 10"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Syntax highlighting (should be close to last)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# iTerm integration (should be last)
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/mboszko/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;
