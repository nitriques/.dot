#!/bin/bash

tabs 4

alias grp='grep -B 2 -A 2 -n --color'

alias reload='source ~/.bash_profile'

alias ..='cd ..'
alias ...='..;..'
alias cd..='cd ..'
alias home='cd ~'
alias ~='cd ~'
alias cd-='cd -'

alias path='echo -e ${PATH//:/\\n}'

# get ip addr
alias ip='curl -s https://deuxhuithuit.com/cdn-cgi/trace | grep ip='

# this function calls top with a command filter (1st arg)
# other parameters are passed down to top
function topp {
	pattern=$1
	shift 1
	top -p $(pgrep -d',' $pattern) $@
}

# http header
alias hh='curl -Is'

# base 64
function 64d {
	node -e "console.log(new Buffer(process.argv[1], 'base64').toString())" $@
}
function 64e {
	node -e "console.log(new Buffer(process.argv[1]).toString('base64'))" $@
}

# top 10 biggest folders
alias top10='du -a / | sort -n -r | head -10'

# php lint all
alias phplint='for D in **/*.php; do php -l $D; done;'

# php lint dirty files
alias ldp="gs | egrep '[ M]{2}' | awk '/[M ]+(.+)\.php/ { system(\"php -l \" \$2); }'"

# extension change
function ext {
	if [ -z "$1" ]; then
		echo "Missing 1st paramter (old ext)"
		return 1
	elif [ -z "$2" ]; then
		echo "Missing 2nd paramter (new ext)"
		return 2
	fi
	find . $3 -name "*.$1" |while read f; do
		$4 mv "$f" "${f%.$1}.$2"
	done
}

# sed shortcut
alias bs2fs="sed 's/\\\\/\\//g'"

# create empty file
function nef {
    BS="$((1024 * $1))";
    dd if=/dev/zero of=$2 count=1024 bs=$BS;
}
