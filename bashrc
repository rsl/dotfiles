PATH=$PATH:$HOME/.rvm/bin:$HOME/.bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
PS1="\e[0;32m\u@\h:\w\e[1;32m\$(git branch 2>/dev/null | grep -e '\* ' | sed 's/^..\(.*\)/ \e[1;33m\1 /')\n\e[0m\$ "
