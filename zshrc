# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Default Editor
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

# Key bindings
bindkey '^R' history-incremental-search-backward
bindkey '^F' history-incremental-search-forward

# Misc PATHs
export GOPATH=/Users/akshayrawat/clerky/go/vendor:/Users/akshayrawat/clerky/go/apps

 #Aliases

## System
alias rm='rm' # Override the default rm -i
alias rf='rm -rf'

## Postgres
alias startpg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stoppg='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias restartpg='stoppost && sleep 1 && startpost'
alias statuspg='pg_ctl status -D /usr/local/var/postgres -s'

## Redis
alias startredis="nohup redis-server /usr/local/etc/redis.conf >/dev/null 2>&1 &"
