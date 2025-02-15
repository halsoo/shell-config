#Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="ukgu"

ZSH_DISABLE_COMPFIX="true"

source $ZSH/oh-my-zsh.sh

# USER CONFIG
export USER_BIN="$HOME/.local/bin"
export NVCC_PATH="/usr/local/cuda/bin"
export CONDA_PATH="$HOME/miniconda3/bin"
export PATH="$USER_BIN:$NVCC_PATH:$CONDA_PATH:$PATH"

# CUSTOM COMMAND for mkdir && cd
function mkcd {
  if [ ! -n "$1" ]; then
    echo "Enter a directory name"
  elif [ -d $1 ]; then
    echo "\`$1' already exists"
  else
    mkdir $1 && cd $1
  fi
}

# ALIASES
alias whereami="echo \$PWD"
alias cl="clear"

alias gitAA="git add ."

alias config="vi ~/.zshrc"
alias change="source ~/.zshrc"

alias home="cd /home/dongmin"

alias allfiles="find $(pwd -P) -mindepth 2 -type f | xargs -I % sh -c 'echo ${"%":t}'"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
