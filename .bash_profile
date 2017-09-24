#!/bin/bash

# issue reset to make terminal wrap correctly
reset

cat ~/.dot/motd

# source all files, in this order
for D in bash macos exports nvm grunt z prompt_git git svn ghwd bashrc; do
	source ~/.dot/$D;
done;

# symlink all .dot files
for D in ~/.dot/.*; do
	B="$(basename $D)"
	if [[ "$B" != ".macos" && "$B" != ".git" && "$B" != "." && "$B" != ".." ]]
	then
		if [ ! -e $B ]
		then
			ln -s .dot/$B $B
		fi
	fi
done;

echo $(date);
