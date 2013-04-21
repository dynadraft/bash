# http://superuser.com/questions/63897/bash-creating-a-useful-bash-profile
userprompt () {
local usercolor="\[\033[1;36m\]"
[[ $EUID == 0 ]] && usercolor="\[\033[1;31m\]"
PS1="\n--$(pwd)"
PS1="${PS1//\//$usercolor/\[\033[0;1m\]}$usercolor\[\033[0m\]-- \n\h:\[\033[1;30m\]\[\033[1;35m\]$> \[\033[0m\]"
}

PROMPT_COMMAND=userprompt

export PATH="$HOME/Dropbox/GitHub/scripts:/usr/local/bin:/usr/local:/usr/bin:/usr/local/sbin:/bin:/usr/sbin:/sbin:$PATH"
#export PATH="$PATH:~/Dropbox/Sites/__TOOLS/scripts/wp-automated-setup"
export EDITOR="subl -w"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.


# Increase size of bash history
HISTFILESIZE=2500

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


# If on either mac home computers then include the mac defaults file
if [ `hostname` = "Aether" ] || [ `hostname` = "Eros" ] ; then
    # Sets reasonable OS X defaults.
    #
    # Or, in other words, set shit how I like in OS X.
    #
    # The original idea (and a couple settings) were grabbed from:
    #   https://github.com/mathiasbynens/dotfiles/blob/master/.osx
    #
    # Run ./set-defaults.sh and you'll be good to go.

    # Disable press-and-hold for keys in favor of key repeat.
    defaults write -g ApplePressAndHoldEnabled -bool false

    # Use AirDrop over every interface. srsly this should be a default.
    defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

    # Always open everything in Finder's list view. This is important.
    defaults write com.apple.Finder FXPreferredViewStyle Nlsv

    # Show the ~/Library folder.
    chflags nohidden ~/Library

    # Set a really fast key repeat.
    defaults write NSGlobalDomain KeyRepeat -int 0

    # Hide Safari's bookmark bar.
    defaults write com.apple.Safari ShowFavoritesBar -bool false

    # Set up Safari for development.
    defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
    defaults write com.apple.Safari IncludeDevelopMenu -bool true
    defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
    defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
    defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
fi

