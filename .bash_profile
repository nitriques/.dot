#!/bin/bash

OS=$(uname);
# load proper .bash_profile
if [ -e ~/.dot/bash_profile_$OS ]; then
	source ~/.dot/bash_profile_$OS;
fi;
