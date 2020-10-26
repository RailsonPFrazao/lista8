#!/bin/bash
op=0
while [ $op != "END" ]; do
	read -p "Escolha uma das opções logica, aritmetica, strings, variáveis, arquivos, extend ou END para sair:" op
	if [ $op == "variaveis" ]; then
		echo 'Opções para aritmetica:
		-eq é igual que
		-ge é maior ou igual a
		-gt é maior que
		-le é menor ou igual a
		-É é menor que
		-ne não é igual a'
	fi
	if [ $op == "logica" ]; then
		echo 'Opções para logica:
		! not
		-a and
		-o or'
	fi
	if [ $op == "strings" ]; then
		echo 'Opções para strings:
		= string é igual
		!= string é diferente
		-n string não é nula
		-z string nula'
	fi
	if [ $op == "aritmetica" ]; then
		echo "Opções para variaveis:
		(expressão) a expressão é verdadeira
		!expressão é falsa
		expressão -a expressão são verdadeiras
		expressão -o expressão uma ou outra é verdade"
	fi
	if [ $op == "arquivos" ]; then
		echo "Opções para arquivos:
		-d é um diretorio
		-f arquivo normal
		-s tamanho maior que 0
		-r tem permissão de leitura
		-w tem permissão de escrita
		-nt arquivo mais recente
		-ot arquivo mais antigo
		-ef arquivos são os mesmos"
	fi
	if [ $op == "extend" ]; then
		echo "Extend"
	fi
done
