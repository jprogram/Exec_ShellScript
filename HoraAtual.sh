######################################################################
#																	 #
#	HoraAtual.sh - Script verifica a hora atual                      #
#																	 #
#	Autor: Jefferson Gomes (jeffersongomes81@gmail.com)				 #
#	Data: 28/12/2019												 #
#																	 #
#	Descricao:														 #
#       Script que verifica a hora atual e imprime determinada       #
#		mensagem, e imprime o horario atual no formato de 12h.		 #
#                                                                    #
#																	 #
######################################################################


#!/bin/bash

clear

HORA_ATUAL=`date +%k`
MENSAGEM="$USER, Hoje é $(date +%a), dia $(date +%d) de $(date +%b) de $(date +%Y)"

HORA=`date +%I`
MINUTOS=`date +%M`
INDICADOR=`date  =%p`


if [ "$HORA_ATUAL" -ge 6 -a "$HORA_ATUAL" -le 11 ]
then
	echo -e "\n\tBom dia $MENSAGEM"

elif [ "$HORA_ATUAL" -ge 12 -a "$HORA_ATUAL" -le 17 ]
then
	echo -e "\n\tBoa tarde $MENSAGEM"

else 
	echo -e "\n\tBoa noite $MENSAGEM"
fi

echo -e "\n\t\tHorario atual: $HORA:$MINUTOS $INDICADOR"
echo ""