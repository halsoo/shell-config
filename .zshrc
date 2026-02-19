#Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="ukgu"

ZSH_DISABLE_COMPFIX="true"

source $ZSH/oh-my-zsh.sh

# USER CONFIG
export CUDA_VISIBLE_DEVICES=1
export USER_BIN="$HOME/.local/bin"
export NVCC_PATH="/usr/local/cuda/bin"
export CONDA_PATH="$HOME/miniconda3/bin"
export DUCKDB_PATH="$HOME/.duckdb/cli"

export PATH="$HOME:$USER_BIN:$NVCC_PATH:$CONDA_PATH:$DUCKDB_PATH:$PATH"

# QT HEADLESS
# export QT_QPA_PLATFORM=offscreen
# export QT_DEBUG_PLUGINS=1
# export QT_QUICK_BACKEND=software

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
alias cl="clear"

alias config="vi ~/.zshrc"
alias change="source ~/.zshrc"

alias activate="source ./.venv/bin/activate"

alias home="cd /home/dongmin"

alias vpnstart="sudo /etc/init.d/nordvpn start"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/dongmin/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/dongmin/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/dongmin/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/dongmin/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

