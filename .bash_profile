# Using some customization based on: https://github.com/mathiasbynens/dotfiles
. ~/.bash_prompt

export PATH="$HOME/dev/scripts:$HOME/Dropbox/GitHub/WordPress-Builder:$HOME/Dropbox/GitHub/scripts:/usr/local/etc/bash_completion.d:/usr/local/bin:/usr/local:/usr/bin:/usr/local/sbin:/bin:/usr/sbin:/sbin"
#export PATH="$PATH:~/Dropbox/Sites/__TOOLS/scripts/wp-automated-setup"
export EDITOR="subl -w"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# Increase size of bash history
HISTFILESIZE=5000

# default add color to ls
# G - colorized output
# F - Visual Classification of Files With Special Characters
# a - show hidden files/folders
# l - list format
alias ls="ls -GFalh"
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
function b() {
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