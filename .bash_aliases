# Quickly edit this file
alias sbdotfiles="github; cd dotfiles; subl ."
alias sbdf="sbdotfiles"
alias dotfiles="github; cd dotfiles;"

# quick cd commands
alias box="cd ~/Dropbox/"
alias dbox="cd ~/Dropbox/"
alias github="cd ~/Dropbox/GitHub/"
alias sites="cd ~/Dropbox/sites/"
alias dev="sites; cd dev"
alias shared="cd ~/Dropbox/Shared\ Folders/"
alias sync="cd ~/Dropbox/Shared\ Folders/Sync/"
alias tools="cd ~/Dropbox/sites/_TOOLS/"
alias scripts="cd ~/Dropbox/GitHub/scripts/"

# scripts
alias cdwpb="github; cd wpbuildr"
alias sbwpb="cdwpb; subl ."

# themes
alias blueox="github; cd blue-ox"
alias sbblueox="blueox; subl ."

#documents and stuff
alias documents="cd ~/Dropbox/Documents/"
alias docs="cd ~/Dropbox/Documents/; open ."
alias dox="docs"

#plugins and projects
alias plugins="dev; cd PLUGINS"

#gitconfig
alias gitignore="subl ~/.gitignore"

#svn config
alias svnconfig="subl ~/.subversion/config"

#specific sites
alias clients="sites; cd clients"
alias sassy="clients; cd sassy"
alias helio="clients; cd helio"

# Sublime Package Directory
alias packages="cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages"

# Quickly edit Subl Preferences
alias sbpref="subl ~/Dropbox/Shared\ Folders/Sync/Sublime/Preferences.sublime-settings"

# Hosts file
alias hosts="sudo subl /private/etc/hosts"
alias flush="dscacheutil -flushcache"

# Get to homebrew
alias cellar="cd /usr/local/Cellar"

# Get to user local
alias local="cd /usr/local/"
alias etc="local; cd etc/"

# User Config
alias etc="cd /usr/local/etc"

# Hub
# https://github.com/defunkt/hub
eval "$(hub alias -s)"