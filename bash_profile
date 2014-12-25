function bash_settings
{
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
  fi

  source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh


  export PATH=/usr/local/bin:$PATH
  export PATH=$HOME/.rbenv/bin:/usr/local/share/npm/bin/:/Users/akshayrawat/play-2.2.1:$PATH
  export PS1='\w$ '
  export PS1='\w$(__git_ps1 "(%s)")$ '
  export EDITOR="vim"
  export HISTSIZE=1000
  export HISTFILESIZE=1000
  export HISTCONTROL=ignoredups
  export GIT_PS1_SHOWUNTRACKEDFILES=true
  export GIT_PS1_SHOWDIRTYSTATE=true
  export GIT_PS1_SHOWUPSTREAM=true
}
function system_command_aliases
{
  alias ls='ls -G'
  alias mkdir='mkdir -p'
  alias df='df -h'
  alias du='du -h -c'
  alias ln='ln -s'
  alias rf='rm -rf'
  alias sniff_lo='sudo tcpdump -i lo0 -A'
  alias bo='EDITOR=mate bundle open '
}

function package_aliases
{
  alias mysql_start="mysqld --skip-grant &disown"
  alias mysqlc="mysql -uroot -pruebe"
  alias mongo_start="sudo rm /data/db/mongod.lock && nohup mongod >/dev/null 2>&1"
  alias pg_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
  alias redis_start="nohup redis-server /usr/local/etc/redis.conf >/dev/null 2>&1"
  alias be="bundle exec"
  alias g="git"
  alias gdi="git di"
  alias glog="git log --all --graph --decorate --oneline --abbrev-commit"
  alias git_cleanup="git branch | grep -v 'master\|develop' | xargs git branch -D"
 # alias git=hub
  alias mdiff="git di | mate"
  alias dim="sips -g pixelWidth -g pixelHeight"
  alias e="subl -n ."
}

function gca
{
  git add -A .
  git commit -m "$@"
}

function pr_develop
{
	hub pull-request -f '$@' -b develop | open
}

function pr_master
{
	hub pull-request -f '$@' -b master | open
}

[ -z "$PS1" ] && return

bash_settings
system_command_aliases
package_aliases
eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export GOPATH=/Users/akshayrawat/clerky/go/vendor:/Users/akshayrawat/clerky/go/apps
export PATH=$PATH:/Users/akshayrawat/clerky/go/vendor/bin:/Users/akshayrawat/clerky/go/apps/bin
export PYTHONPATH=/Library/Python/2.6/site-packages
