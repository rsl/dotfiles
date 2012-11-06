PATH=$HOME/.bin:$PATH:$HOME/.rvm/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
PS1="\e[0;37m\u@\h:\e[0;92m\w\$(git branch 2>/dev/null | grep -e '\* ' | sed 's/^..\(.*\)/ \e[0;95m\1 /')\e[0m\n\$ "

# Aliases
source ~/.bash_aliases

# ENV variable exports [which might not make sense on other machines or need to be private]
source ~/.bash_exports