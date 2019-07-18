# ----------
# Local stuff for just the user, in ~/.zshrc
# ----------

# Python and Virtual Environment defaults
export PYTHONVER=3.7
export PYTHON=python${PYTHONVER}
export PATH="/Library/Frameworks/Python.framework/Versions/${PYTHONVER}/bin:${PATH}"
export PROJECT_HOME="${HOME}/dev"
export WORKON_HOME="${HOME}/.virtualenvs"
export VIRTUALENVWRAPPER_TMPDIR="${WORKON_HOME}/tmp"
export VIRTUALENVWRAPPER_PYTHON=`which python3`
source "/Library/Frameworks/Python.framework/Versions/${PYTHONVER}/bin/virtualenvwrapper.sh"
export PIP_VIRTUALENV_BASE="${WORKON_HOME}"
export PIP_RESPECT_VIRTUALENV=true
# Because I can never remember the 'deactivate' command
alias workoff="deactivate"

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

