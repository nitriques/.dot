#!/bin/bash

OS=$(uname -s);

# Try to get simpler OS name
if [[ "$OS" != "Linux" && "$OS" != "Darwin" ]]; then
	OS=$(uname -o);
fi

# load proper .bash_profile
if [ -e ~/.dot/bash_profile_$OS ]; then
	source ~/.dot/bash_profile_$OS;
else
	echo "File ~/.dot/bash_profile_$OS not found"
fi;
