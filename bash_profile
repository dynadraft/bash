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

# http://www.aschroder.com/2009/03/how-to-use-the-mamp-mysql-command-line-client-in-a-terminal/
# add mysql for mamp to command line easy access
alias db="/Applications/MAMP/Library/bin/mysql -uroot -proot"


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

# quick cd commands
alias box="cd ~/Dropbox/"
alias github="cd ~/Dropbox/GitHub/"
alias sites="cd ~/Dropbox/Sites/"
alias dev="sites; cd dev"
alias lab="cd ~/Dropbox/Sites/dev/lab"
alias sync="cd ~/Dropbox/Shared\ Folders/Sync/"
alias tools="cd ~/Dropbox/Sites/__TOOLS/"
alias scripts="cd ~/Dropbox/Sites/__TOOLS/scripts/"

# scripts
alias cdwpb="scripts; cd WordPress-Builder"
alias sblwpb="subl ~/Dropbox/Sites/__TOOLS/scripts/WordPress-Builder"

# themes
alias blueox="cd ~/Dropbox/Sites/__TOOLS/blue-ox"
alias sblblueox="cdblueox; subl ."


#documents and stuff
alias documents="cd ~/Dropbox/Documents/"

#plugins and projects
alias plugins="dev; cd PLUGINS"
alias konami="plugins; cd WP_KONAMI/html/wp-content/plugins/the-konami-code"

#gitconfig
alias .gitconfig="subl ~/.gitconfig"
alias .gitignore="subl ~/.gitignore"

#svn config
alias .svnconfig="subl ~/.subversion/config"

#specific sites
alias sassy="sites; cd Sassy"
alias acton="sites; cd Acton"

#ssh aliases
alias sshhelios="ssh -p 5775 tyrun@helios"

#10up stuff
alias 10up="sites; cd 10up/yp-primary-layout/html/wp-content/themes/yp-themes/"
alias yp4="10up; cd yp-child-theme-primary-4/"
alias yp8="10up; cd yp-child-theme-primary-8/"

# Quickly edit this profile
alias profile="subl ~/Dropbox/Shared\ Folders/Sync/Bash\ Profile/.bash_profile"

# Sublime Package Directory
alias packages="cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages"

# Quickly edit Subl Preferences
alias sblpref="subl ~/Dropbox/Shared\ Folders/Sync/Sublime/Preferences.sublime-settings"

# Hosts file
alias hosts="sudo subl /private/etc/hosts"
alias flush="dscacheutil -flushcache"
