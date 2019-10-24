#!/usr/bin/env bash

DIR=${PWD##*/}

if [[ -z $1 ]]; then
	if [[ ! -f /etc/mk/$DIR ]]; then
		echo "No entry for this directory, run \`mk.sh add\`"
		exit 0
	fi
	/etc/mk/$DIR
elif [[ $1 == "add" ]]; then
	vim /etc/mk/$DIR || vi /etc/mk/%DIR
	chmod +x /etc/mk/$DIR || exit 0
else
	printf "Did you mean \`mk.sh add\`?\n"
fi
