############################


USER=`/usr/bin/whoami`
export USER

GROUP=`/usr/bin/id -gn $user`
export GROUP

MAIL="$USER@student.42.fr"
export MAIL


############################


LSCOLORS=ExFxcxdxbxegedabagacad
export LSCOLORS

LS_COLORS='di=1;34:ln=1;35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
export LS_COLORS

zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
autoload -Uz compinit
compinit

PROMPT="%F{10}lalves @ $(hostname -s)%f  %F{9}%~/%f
%F{10}> %f"


############################


HOMEBREW_CACHE=/tmp/Homebrew
export HOMEBREW_CACHE

setopt AUTO_CD


############################


alias gc='gcc -Wall -Wextra -Werror'
alias l='ls -Gpla'
alias ls='ls -Gp'
alias valgrind='~/.brew/bin/valgrind'
alias newp='sh ~/.Files/new_project.sh'
alias 42fc='sh ~/.42Filechecker/42Filechecker.sh'


############################