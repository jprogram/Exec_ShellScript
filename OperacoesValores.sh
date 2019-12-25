


#!/bin/bash

clear

read -p "Informe o Valor1: " VALOR1
read -p "Informe o Valor2: " VALOR2

echo -e "\nEscolha uma Operação: "
echo -e "1 = Soma"
echo -e "2 = Subtração"
echo -e "3 = Multiplicação"
echo -e "4 = Divisão"
echo -e "Q = Sair"

read -p "Opção: " OPCAO

case $OPCAO in
	1)
		SOMA=$(($VALOR1+$VALOR2))
		echo -e "\nO Resultado da soma eh $SOMA"
		;;
		
	2)
		SUBTRACAO=$(($VALOR1-$VALOR2))
		echo -e "\nO Resultado da subtracao eh $SUBTRACAO"
		;;
		
	3)
		MULTIPLICACAO=$(($VALOR1*$VALOR2))
		echo -e "\nO Resultado da subtracao eh $MULTIPLICACAO"
		;;
		
	4)
		DIVISAO=$(($VALOR1/$VALOR2))
		echo -e "\nO Resultado da subtracao eh $DIVISAO"
		;;
		
	Q | q)
		echo -e "\nSaindo do programa!"
		;;
		
	*)
		echo -e "\nOpção Inválida!"
		;;		
	
esac		