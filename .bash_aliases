
# Quickly edit this file
alias sblpf="scripts; cd dotfiles; subl ."


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