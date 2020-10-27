#!/bin/bash

echo "O while irá entrar em um loop até que a condição se torne verdadeira, como podemos ver no exemplo ele ficara em loop até ser o segundos ser igual ou maior que onze, o until funciona como um while invertido, o loop permanecera ativo enquanto a condição é falsa, asim como podemos ver no exemplo.
while (( "'${SECONDS}'" <= 10 )); do
	echo "Segundos '${SECONDS}'"
	sleep 1
done

until (( "'${SECONDS}'" >= 10 )); do
	echo "Segundos '${SECONDS}'"
	sleep 1
done"
