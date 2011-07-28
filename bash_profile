function bash_settings
{
	export PS1='\h:\W$(__git_ps1 "(%s)")$ '
	export EDITOR="mate"
	export HISTSIZE=1000
	export HISTFILESIZE=1000
	export HISTCONTROL=ignoredups
	export GIT_PS1_SHOWUNTRACKEDFILES=true
	export GIT_PS1_SHOWDIRTYSTATE=true	
	export GIT_PS1_SHOWUPSTREAM=true

	if [ -f /usr/local/etc/bash_completion ]; then
		. /usr/local/etc/bash_completion
	fi
}
	function system_command_aliases 
{
	alias ls='ls -G'
	alias mkdir='mkdir -p'
	alias df='df -h'
	alias du='du -h -c'
	alias ln='ln -s'
}

function package_aliases
{
	alias mysqlstart="mysqld --skip-grant &disown"
	alias mysqlc="mysql -uroot -pruebe"
	alias be="bundle exec"
	alias mdiff= "git di | mate"
	alias mdiffc= "git dic | mate"
}


function load_rvm
{
	[[ -s "/Users/akshayrawat/.rvm/scripts/rvm" ]] && source "/Users/akshayrawat/.rvm/scripts/rvm"
}


load_rvm
[ -z "$PS1" ] && return
bash_settings
system_command_aliases
package_aliases
