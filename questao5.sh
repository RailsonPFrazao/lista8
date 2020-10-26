#!/bin/bash

cont=0
while [ $cont != $(wc -l ips.txt | cut -f1 -d ' ') ]; do
	cont=$(( $cont + 1 ))
	ips=$(sed -n "$cont"p ips.txt)
	ping -c 4 $ips > pings.txt 
	[ $(cut -f1 -d ' ' pings.txt | sed -n 4p) = "4" ] && echo $ips > falha.txt

done
if [ -f falha.txt ]; then
	echo "ip's que falharam:" $(cat falha.txt)
	rm falha.txt
else
	echo "Todos foram bem sucedidos."
fi
rm pings.txt
