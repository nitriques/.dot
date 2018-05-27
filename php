#!/bin/bash

# php versions
alias php5='/usr/local/opt/php56/bin/php'

# Add global composer bin
export PATH="$PATH:~/.composer/vendor/bin"
# Add relative composer bin
export PATH="$PATH:./vendor/bin"

# php unit
alias pu='phpunit --colors'
alias pu5='php5 ./vendor/phpunit/phpunit/phpunit'

