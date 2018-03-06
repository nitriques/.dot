#!/bin/bash

# Add global composer bin
export PATH="$PATH:~/.composer/vendor/bin/"
# Add relative composer bin
export PATH="$PATH:./vendor/bin"

alias pu='phpunit --colors'
