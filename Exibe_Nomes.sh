#!/bin/bash

clear

set |grep IFS

IFS=':'

declare -a ARRAY_NOMES

NOMES=""
NOMES_J=" "
NOMES_NOT_J=""

set |grep IFS

for linha in $(cat Nomes_Usuarios.txt)
do
	ARRAY_NOMES+=$linha
	echo "${linha:0:1}"
done

echo -e "\nNomes que estão contidos no arquivo txt: "
echo ""
echo ${ARRAY_NOMES[@]}

i=0

while [ $i -lt ${#ARRAY_NOMES[@]} ]
do
	echo ${ARRAY_NOMES[$i]}
	i=$(expr $i + 1)
done
