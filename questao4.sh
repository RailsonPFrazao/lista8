#!/bin/bash

read -p "Digite o nome do arquivo:" arq
cont=0
letras=0
num=0
while [ $cont != $(wc -l $arq | cut -f1 -d ' ') ]; do
	cont=$(( $cont + 1 ))
	teste=$(sed -n "$cont"p $arq)
	[[ $teste =~ ^([A-Za-z]+)$ ]] && letras=$(( $letras + 1 ))
	[[ $teste = ?(+|-)+([0-9]) ]] && num=$(( $num + 1 ))
	
done
echo "Total de linhas que tem somente letras:" $letras
echo "Total de linhas que tem somente números:" $num
