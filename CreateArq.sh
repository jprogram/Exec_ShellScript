############################################################
#
#	CreateArq.sh - Script de testes com condicionais
#	
#   Autor: Jefferson Gomes (jeffersongomes81@gmail.com)
#	Data: 24/12/19
#
#	Descricao:
#		Script que verifica a existencia de arquivo, caso
#		não exista, ele o cria e insere texto tanto passado
#		por parametro pelo usuario quanto digitado durante
#		a execucao do programa.		
#
############################################################


#!/bin/bash

clear

DIR_ATUAL=`pwd`
ARQUIVO="Names.txt"
PARAMETRO=$1

echo "------------------------------------------"
echo -e "\tCreateArq.sh"
echo "------------------------------------------"

read -p "Digite algum texto: " TEXT

if [ -e "$DIR_ATUAL/$ARQUIVO" ]
then
	echo -e "\n\tArquivo Names.txt ja Existe"
	#echo -e "Teste" >> $ARQUIVO
	echo -e $PARAMETRO >> $ARQUIVO
	echo -e $TEXT >> $ARQUIVO
	echo -e "\tAdd texto no arquivo"
	
else
	echo -e "\n\tArquivo Names.txt Nao existe"
	touch $ARQUIVO
	
	if [ -n $PARAMETRO ]
	then
		echo -e $PARAMETRO >> $ARQUIVO
	fi

	echo -e $TEXT >> $ARQUIVO
	
	echo -e "\n\tArquivo criado!"
fi
echo ""