###########################################################################
#																		  #	
#	InfoMaquina.sh - Script de exercicio do curso de Shell				  #
#	Autor: Jefferson Gomes (jeffersongomes81@gmail.com)	                  #
#	Data: 14/12/19                                                        #
#																		  #
#	Descricao:                                                            #
#		Exercicio na qual ira exibir ao usuario as informacoes            #
#		atual da maquina que esta usando.                                 #
#																		  #
###########################################################################

#!/bin/bash

clear

NOMEMAQUINA=`hostname`
DATA_MAQ_ATIVA=`uname -v` 
VERSAO_KERNEL=`uname -r`
MEMTOTAL=$(expr $(cat /proc/meminfo |grep MemTotal|tr -d ' '|cut -d: -f2|tr -d kB)/1024)#Em mb

QTDE_CPU_CORE=`grep -c processor /proc/cpuinfo`
MODEL_CPU=`cat /proc/cpuinfo | grep 'model name'|head -n1|cut -c14-`
#cat /proc/cpuinfo | grep 'MemTotal' | uniq

echo "============================================="
echo -e "Relatório da Máquina: $NOMEMAQUINA" 
echo -e "\nData/Hora: $(date)" 
echo "============================================="

echo -e "\nMaquina Ativa desde $DATA_MAQ_ATIVA"
echo -e "\nVersao do Kernel: $VERSAO_KERNEL\n"

echo -e "CPUs:"
echo -e "Quantidade de CPUs/Core: $QTDE_CPU_CORE" 
echo -e "Modelo da CPU: "$MODEL_CPU
echo "Memória Total: $MEMTOTAL MB"

#cat /proc/meminfo | grep 'MemTotal' | uniq

echo -e "\nPartições:"
df -h|egrep -v '(tmpfs|udev)'
