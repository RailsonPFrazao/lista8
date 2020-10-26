#!/bin/bash

linhas=$(ls | wc -l)
todos=$(ls)
echo $todos > t.txt

while [ 0 == 0 ]; do
	read -p "Escolha uma das opções 'q' para sair, 'f' para exibir os arquivos, 'd' para exibir os diretorios, 'v' para ver o conteudo de um arquivo e cd para mudar para um diretorio:" opt
	[ $opt = "q" ] && rm t.txt && exit 0
	if [ $opt = "f" ]; then
		for i in $(seq 1 $linhas); do
			[ -f $(cut -f"$i" -d ' ' t.txt) ] && echo "É um arquivo:" $(cut -f"$i" -d ' ' t.txt)
		done
	fi
	
	if [ $opt = "d" ]; then
		for i in $(seq 1 $linhas); do
			[ -d $(cut -f"$i" -d ' ' t.txt) ] && echo "É um diretorio:" $(cut -f"$i" -d ' ' t.txt)
		done
	fi

	if [ $opt = "v" ]; then
		read -p "Digite o arquive que quer ver o conteudo:" ver
		cat $ver
	fi

	if [ $opt = "cd" ]; then
		read -p "Digite o diretorio que quer ir:" dr
		cd $dr
	        linhas=$(ls | wc -l)
		todos=$(ls)
		echo $todos > t.txt
		echo "Você está aqui:" $(pwd)	
	fi

done

