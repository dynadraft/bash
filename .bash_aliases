# Quickly edit this file
alias sbdotfiles="github; cd dotfiles; subl ."
alias dot="sbdotfiles"
alias cddot="github; cd dotfiles;"

# Quick WP cd commands
alias themes="cd wp-content/themes";
alias plugins="cd wp-content/plugins";
alias cdwp="cd ../../../";

# quick cd commands
alias box="cd ~/Dropbox/"
alias github="cd ~/Dropbox/GitHub/"
alias sites="cd ~/dev/vagrant-web/www"
alias shared="cd ~/Dropbox/Shared\ Folders/"
alias sync="cd ~/Dropbox/Shared\ Folders/Sync/"
alias tools="sites; cd _TOOLS/"
alias scripts="cd ~/Dropbox/GitHub/scripts/"
alias dev="cd ~/dev"

# scripts
alias cdwpb="github; cd wpbuildr"
alias sbwpb="cdwpb; subl ."

# themes
alias blueox="github; cd blueox"
alias sbblueox="blueox; subl ."

#documents and stuff
alias documents="cd ~/Dropbox/Documents/"
alias docs="cd ~/Dropbox/Documents/; open ."
alias dox="docs"


#gitconfig
alias gitignore="subl ~/.gitignore"

#svn config
alias svnconfig="subl ~/.subversion/config"

#specific sites
alias clients="sites; cd clients"
alias metrocorp="sites; cd metrocorp"
alias metro="metrocorp"
alias vip="sites; cd vip.wordpress.dev"
alias www="dev; cd vagrant-web/www"
alias w3="www"

# Sublime Package Directory
alias packages="cd ~/Library/Application\ Support/Sublime\ Text/Packages"

# Hosts file
alias hosts="sudo vim /private/etc/hosts"
alias flush="dscacheutil -flushcache"

# Get to homebrew
alias cellar="cd /usr/local/Cellar"

# Get to user local
alias local="cd /usr/local/"
alias etc="local; cd etc/"

# User Config
alias etc="cd /usr/local/etc"

# Vagrant
alias vg="dev; cd vagrant-web"
alias sbvg="vg; subl ."
alias vup="vg; vagrant up"

alias hobby="w3; cd hobby;"
alias rebel="hobby; cd rebel-trader;"

# Dynamic Aliases
for i in /Users/tyrun/dev/vagrant-web/www/*
do 
   alias $(basename $i)="cd '$i'; cd wp-content"
done

# Git completion
if [ -f ~/Dropbox/GitHub/scripts.git-completion.bash ]; then
  . ~/Dropbox/GitHub/scripts/.git-completion.bash
fi