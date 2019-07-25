DIR=${PWD##*/}

if [[ -z $1 ]]; then
	/etc/mk/$DIR
elif [[ $1 == "add" ]]; then
	vim /etc/mk/$DIR || vi /etc/mk/%DIR
	chmod +x /etc/mk/$DIR || exit 0
else
	printf "Did you mean \`mk.sh add\`?\n"
fi
