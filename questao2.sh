#!/bin/bash

while [ 0 == 0 ]; do
	echo "Arquivo key não criado, digite algo para criar o arquivo."
	read -t 2 arquivo
	if [ -n "$arquivo" ]; then
		touch Key
		echo "Arquivo key criado"
	fi
	[ -f Key ] && exit 0

done
