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
export PYENV_PATH="$HOME/.pyenv/bin"
export RUST_PATH="$HOME/.cargo/bin"

export PATH="$HOME:$USER_BIN:$NVCC_PATH:$CONDA_PATH:$PYENV_PATH:$RUST_PATH:$PATH"

# ALIASES
alias cl="clear"

alias config="vi ~/.zshrc"
alias change="source ~/.zshrc"

alias nm="nvidia-smi"

alias activate="source ./.venv/bin/activate"

alias home="cd /home/dongmin"

alias vpnstart="sudo /etc/init.d/nordvpn start"