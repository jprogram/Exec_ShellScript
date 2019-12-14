###########################################################################
#	
#	SomaValores.sh - Script de exercicio do curso de Shell
#	Autor: Jefferson Gomes (jeffersongomes81@gmail.com)	
#	Data: 14/12/19
#	
#	Descricao: 
#		Exercicio simples onde pedirá ao usuario informar dois
#		valores numericos e apos isto sera exibido o valor da soma destes.
#
###########################################################################

#!/bin/bash

clear

echo "-------------------------------------------------------"
echo "		   Soma Valores						             "
echo "-------------------------------------------------------"

echo ""
read -p "--> Informe um valor numerico: " NUM1

echo ""
read -p "--> Informe o segundo valor numerico: " NUM2

SOMA=$(($NUM1+$NUM2))

echo -e "\n--> O resultado da soma dos valores $NUM1 e $NUM2 eh $SOMA\n"

echo "-------------------------------------------------------"
echo "		   Fim do Shell						             "
echo "-------------------------------------------------------"  