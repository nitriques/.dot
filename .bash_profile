#!/bin/bash

cat ~/.dot/motd

# source all files, in this order
for D in bash macos exports nvm grunt z prompt_git git svn bashrc; do
	source ~/.dot/$D;
done;

# symlink all .dot files
for D in ~/.dot/.*; do
	B="$(basename $D)"
	if [[ "$B" != ".macos" && "$B" != "." && "$B" != ".." ]]
	then
		if [ ! -e $B ]
		then
			ln -s .dot/$B $B
		fi
	fi
done;

