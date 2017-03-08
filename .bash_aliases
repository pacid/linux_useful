last=" grep CRON /var/log/syslog"
alias showba='cat ~/.bash_aliases'
alias editba='nano ~/.bash_aliases'
alias sourcea='source ~/.bash_aliases'


## get rid of command not found ##
alias cd..='cd ..'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'


## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'


## Create parent directories on demand
alias mkdir='mkdir -pv'

# handy short cuts #
alias h='history'
alias j='jobs -l'


alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'


alias ports='netstat -tulanp'


## this one saved by butt so many times ##
alias wget='wget -c'


alias subl="open /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
alias e='eom' #open picture from console


# git
alias st='git status'
alias gl="git log -n5"

