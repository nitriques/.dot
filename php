#!/bin/bash

# php versions
alias php5='/usr/local/opt/php56/bin/php'
alias php70='/usr/local/opt/php@7.0/bin/php'
alias php71='/usr/local/opt/php@7.1/bin/php'
alias php72='/usr/local/opt/php@7.2/bin/php'
alias php7='php71'
# curent by default
export PATH="/usr/local/opt/php@current/bin:$PATH"

# Add global composer bin
export PATH="$PATH:~/.composer/vendor/bin"
# Add relative composer bin
export PATH="$PATH:./vendor/bin"

# php unit
alias pu='phpunit --colors'
alias pu5='php5 ./vendor/phpunit/phpunit/phpunit'
alias pu71='php1 ./vendor/phpunit/phpunit/phpunit'
alias pu7='php7 ./vendor/phpunit/phpunit/phpunit'

