# http://superuser.com/questions/63897/bash-creating-a-useful-bash-profile
userprompt () {
local usercolor="\[\033[1;36m\]"
[[ $EUID == 0 ]] && usercolor="\[\033[1;31m\]"
PS1="\n--$(pwd)"
PS1="${PS1//\//$usercolor/\[\033[0;1m\]}$usercolor\[\033[0m\]-- \n\h:\[\033[1;30m\]\[\033[1;35m\]$> \[\033[0m\]"
}

PROMPT_COMMAND=userprompt

export PATH="$PATH:$HOME/Dropbox/Sites/__TOOLS/scripts/WordPress-Builder:$HOME/Dropbox/Sites/__TOOLS/scripts/:/usr/local/sbin:/usr/local:/usr/local/sbin"
#export PATH="$PATH:~/Dropbox/Sites/__TOOLS/scripts/wp-automated-setup"
export EDITOR="subl -w"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.


# default add color to ls
alias ls="ls -Gal"
alias sl="ls"

# Add to grep: color, line numbers, context of 1 line
alias grep="grep --color -n -B 1"

# show folders
alias lp="ls -p"

# a couple misc/simple commands
alias h="history"
alias "cd.."="cd .."

# From alias.sh
# go back x directories
b() {
    str=""
    count=0
    while [ "$count" -lt "$1" ];
    do
        str=$str"../"
        let count=count+1
    done
    cd $str
}

# make and cd into a directory
function mcd() {
  mkdir -p "$1" && cd "$1";
}

# search for process
alias tm='ps -ef | grep'

# show which commands you use the most
alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'


if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

