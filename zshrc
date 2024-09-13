export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="sorin"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 20
zstyle ':omz:plugins:nvm' autoload yes

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="dd/mm/yyyy"

plugins=(
  dotenv
)

source $ZSH/oh-my-zsh.sh

# Python Version Manager (PYENV)
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


# Node Version Manager (NVM)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


# Ruby Version Manager (RVM)
export PATH="$PATH:$HOME/.rvm/bin"

export MANPATH="/usr/local/man:$MANPATH"

export LANG=en_US.UTF-8

# Kubernetes current context
function kubectx_prompt() {
  local k8s_ctx=$(kubectl config current-context 2>/dev/null)
  [[ -n "$k8s_ctx" ]] && echo "%F{white}k8s:%B%F{blue}($k8s_ctx)%b%f "
}

# Git current branch
function git_branch_prompt() {
  local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  [[ -n "$branch" ]] && echo "%F{white}git:%B%F{blue}($branch)%b%f "
}

autoload -U colors && colors

PROMPT='$(kubectx_prompt)$(git_branch_prompt)%F{white}%c ❯'

# https://github.com/ohmyzsh/ohmyzsh/issues/449#issuecomment-1466968
unsetopt extendedglob
unsetopt EXTENDED_GLOB
