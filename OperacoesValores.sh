######################################################################
#																	 #
#	OperacoesValores.sh - Script realiza operações aritmeticas       #
#																	 #
#	Autor: Jefferson Gomes (jeffersongomes81@gmail.com)				 #
#	Data: 25/12/2019												 #
#																	 #
#	Descricao:														 #
#       Script que realiza determinada operação escolhida pelo       #
#		usuario, utilizando a estrutura case do Shell.				 #
#                                                                    #
#																	 #
######################################################################


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

echo ""
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
		if [ $VALOR1 -eq 0 ] || [ $VALOR2 -eq 0 ]
		then
			echo -e "\n\tErro!!"
			echo -e "\nNenhum dos valores informados podem ser iguais a zero!"
			exit 1
		fi
		
		MULTIPLICACAO=$(($VALOR1*$VALOR2))
		echo -e "\nO Resultado da Multiplicação dos valores: $MULTIPLICACAO"
		;;
		
	4)
		if [ $VALOR1 -eq 0 ] || [ $VALOR2 -eq 0 ]
		then
			echo -e "\n\tErro!!"
			echo -e "\nNenhum dos valores informados podem ser iguais a zero!"
			exit 1
		fi
		
		RESTO=$(($VALOR1%$VALOR2))
		DIVISAO=$(($VALOR1/$VALOR2))
		
		if [ $RESTO -ne 0 ]
		then
			echo -e "\nValor do Resto da Divisao: $RESTO"
		fi
		
		echo -e "\nO Resultado da divisão dos valores: $DIVISAO"
		;;
		
	Q | q)
		echo -e "\nSaindo do programa!"
		;;
		
	*)
		echo -e "\nOpção Inválida!"
		;;		
esac		