# oh-my-zsh
export ZSH="/Users/akshay/.oh-my-zsh"
ZSH_THEME="agnoster"

plugins=(
  git
  vi-mode
  history-substring-search
  zsh-autosuggestions
  bundler
)

source $ZSH/oh-my-zsh.sh

export EDITOR='vi'

# aliases
alias rf='rm -rf'

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"
