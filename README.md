# Sync dotfiles!
### Feel free to use for inspiration!

### For .bash_profile

I put the following command into a Text Expander snippet:

`wget -q -O - "$@" https://raw.github.com/AaronHolbrook/dotfiles/master/bash_profile > ~/.bash_profile`

### Or for the .bash_alias

`wget -q -O - "$@" https://raw.github.com/AaronHolbrook/dotfiles/master/.bash_aliases > ~/.bash_aliases`

And then I can easily pull in new changes to whatever machine I'm running on.