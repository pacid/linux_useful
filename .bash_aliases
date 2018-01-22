alias docker-compose="/usr/bin/docker-compose"
alias dip="docker inspect -f '{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -aq)"

alias last=" grep CRON /var/log/syslog"
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
alias git_rm_branch='git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d'

# symfony docker
alias ccbm='docker-compose exec fpm php bin/console cache:clear --no-warmup --env behat_docker_dev'
alias ccbs='docker-compose exec fpm php bin/console cache:clear --no-warmup --env behat'
alias cc='docker-compose exec fpm php bin/console cache:clear --no-warmup --env dev'

# docker
alias edp='docker-compose exec fpm php'
alias edpm='docker-compose exec <projectname>_fpm_1 php'
alias ed='docker-compose exec fpm'
alias med='docker-compose exec <projectname>_fpm'
alias bh='docker-compose exec fpm vendor/bin/behat --colors -p docker_dev'
alias dr='docker-compose stop && docker-compose start'
alias bhs='docker-compose exec fpm vendor/bin/behat --colors -p phantomjs_docker'
alias fpms="docker exec -it <projectname>_fpm_1 bash"
alias fpmsr="docker exec -it -u root <projectname>_fpm_1 bash"

#doctrine
alias mig="edp bin/console doctrine:migration:migrate --no-interaction"
alias migs="edpm bin/console doctrine:migration:migrate --no-interaction"
alias suds="edp bin/console doctrine:schema:update --dump-sql"
alias suf="edp bin/console doctrine:schema:update --force"
alias suall="edp bin/console doctrine:schema:update --force --dump-sql"
alias schemaandmigrations="edp bin/console doctrine:schema:update --force --dump-sql;mig;"


#db fixtures
alias addadmin="edp bin/console fos:user:create admin admin@admin.xx admin --super-admin; edp  bin/console fos:user:activate admin;" 
alias addsadmin="edp bin/console fos:user:create sadmin sadmin@sadmin.xx sadmin --super-admin; edp  bin/console fos:user:activate sadmin;" 



dropAndRecreateDb() {
	edp bin/console doctrine:schema:drop --force 
	schemaandmigrations
#	edp bin/console doctrine:fixtures:load -n
	addadmin
}

dropForCategories() {
	edp bin/console doctrine:schema:drop --force
	schemaandmigrations
	addadmin
}

exStorm() {
	cwd=$(pwd)
	cd ~/software/PhpStorm-162.2380.11/bin
	./phpstorm.sh 2>/dev/null &
	cd $cwd
}

alias docker-ips="docker network inspect <projectname>_backend <projectname>_frontend"
alias phpunit="docker-compose exec fpm vendor/bin/phpunit --configuration app/phpunit_coverage.xml"
