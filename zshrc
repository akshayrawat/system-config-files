# oh-my-zsh
export ZSH="/Users/akshay/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git bundler)
source $ZSH/oh-my-zsh.sh

export EDITOR='mvim'

# aliases
alias rf='rm -rf'

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"
