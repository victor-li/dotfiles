# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

ZSH_THEME="spaceship"

plugins=(
  git
  macos
  zsh-autosuggestions
  zsh-completions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# zsh-completions
autoload -U compinit && compinit

# Set Locale
export LANG=en_US.UTF-8

# Set default editor
export EDITOR=vim
export VISUAL=vim

# Load local configuration
if [ -f ~/.zshrc.local ]; then
    source ~/.zshrc.local
fi

# Spaceship configuration
SPACESHIP_TIME_SHOW="true"
SPACESHIP_VENV_GENERIC_NAMES=()
