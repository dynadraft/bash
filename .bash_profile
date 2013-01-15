# http://superuser.com/questions/63897/bash-creating-a-useful-bash-profile
userprompt () {
local usercolor="\[\033[1;36m\]"
[[ $EUID == 0 ]] && usercolor="\[\033[1;31m\]"
PS1="\n--$(pwd)"
PS1="${PS1//\//$usercolor/\[\033[0;1m\]}$usercolor\[\033[0m\]-- \n\[\033[1;30m\]\[\033[1;35m\]$> \[\033[0m\]"
}

PROMPT_COMMAND=userprompt

export PATH="$PATH:$HOME/Dropbox/Sites/__TOOLS/scripts/WordPress-Builder:$HOME/Dropbox/Sites/__TOOLS/scripts/:/usr/local/sbin:/usr/local:/usr/local/sbin"
#export PATH="$PATH:~/Dropbox/Sites/__TOOLS/scripts/wp-automated-setup"
export EDITOR="subl -w"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.


if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi