#please see inputrc file as well
#set -o vi

# if user is not root, pass all commands via sudo #
# if [ $UID -ne 0 ]; then
#     alias reboot='sudo reboot'
#     alias update='sudo apt-get upgrade'
# fi

REPO="REPO6678"
cd /mnt/raid/shared/git-changes/$REPO

alias sessions='tmux ls'
alias kill-session='tmux kill-session -t'

alias g='git '

alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'

alias cd..='cd ..' 
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias mkdir='mkdir -pv'
alias c='clear'

alias ll='ls -lA' 
alias lsd="ls -d1 */"
alias l.='ls -d .* --color=auto'

# Now a function has been made in bashrc for more utility features 
#alias fn="find -iname 2>/dev/null"

#alias mount='mount |column -t' 
alias h='history'
alias j='jobs -l'

alias nowtime='date +"%T"'
alias nowdate='date +"%d-%m-%Y"'


alias rm='rm -I --preserve-root'
alias mv='mv -i' 
alias cp='cp -i' 
alias ln='ln -i'

alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

alias wget='wget -c'

alias df='df -h'
alias du='du -ch'

alias bigfiles="find . -type f 2>/dev/null | xargs du -a 2>/dev/null | awk '{ if ( \$1 > 5000) print \$0 }'"
alias verybigfiles="find . -type f 2>/dev/null | xargs du -a 2>/dev/null | awk '{ if ( \$1 > 500000) print \$0 }'"

#show only my procs
alias psme='ps -ef | grep $USER --color=always '

# alias lx='ls -lXB'         #  Sort by extension.
# alias lk='ls -lSr'         #  Sort by size, biggest last.
# alias lt='ls -ltr'         #  Sort by date, most recent last.
# alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
# alias lu='ls -ltur'        #  Sort by/show access time,most recent last.

. /etc/profile
. ~/.git_functions
. ~/.my_bash_tools

alias rpsql-pwless="psql -h 127.0.0.1 -p 5432 -Utradein_dev tradein_clients -w"
alias rpsql='/usr/bin/psql -h104.155.213.103 -Utradein_dev tradein_clients'


export histcontrol="erasedups:ignoreboth"
export HISTFILESIZE=500000
export HISTSIZE=100000
#export HISTIGNORE="&:[ ]*:exit"
export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S "


shopt -s histappend
shopt -s cmdhist
export PROMPT_COMMAND="history -a"

export DBI_PASS=ti_hacker
export PROMPT_DIRTRIM=1

# If you are diehard user of vim then you can use below line as pager 
#export PAGER="/usr/bin/vim -f -R -"
export PAGER=less
export TERM=xterm-256color



export PS1='$(printf "%*s\r%s" $(( COLUMNS-1 )) " $(git branch 2>/dev/null | grep '^*' | sed s/..//)* " "\u@\h:\w$ ")'

[ -r /home/amitanand/.byobu/prompt ] && . /home/amitanand/.byobu/prompt   #byobu-prompt#

