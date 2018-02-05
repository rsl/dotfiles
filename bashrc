PATH=/usr/local/bin:$HOME/.bin:/usr/local/sbin:$PATH
PS1="\e[0;37m\u@\h:\e[0;92m\w\$(git branch 2>/dev/null | grep -e '\* ' | sed 's/^..\(.*\)/ \e[0;95m\1 /')\e[0m\n\$ "

# Aliases [which might not make sense on other machines or need to be private]
source ~/.bash_aliases

# ENV variable exports [which might not make sense on other machines or need to be private]
source ~/.bash_exports

# chruby!
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi
