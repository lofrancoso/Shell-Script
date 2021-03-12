#!/bin/bash

echo "============= `date "+%d/%m/%Y %H:%M"` ================" ; sleep 2

echo "Criando um diretório..."

read -p "Insira o nome absoluto:  " DIR

echo "Criando o diretório $DIR..." ; echo ; sleep 2

mkdir $DIR && ls -l

  if [[ $? -eq 0 ]]

then
        echo "Diretório criado com sucesso" ; echo
else
        echo "Falha ao criar o diretório" ; echo
fi

echo 
read -p "Diretório já existe, deseja excluí-l0? [s/n]" opcao

case $opcao in

s) rmdir $DIR && echo "Diretório excluído" ;;
n) echo "Saindo..." ; exit ;;
*) echo "Opção inválida" ;;

esac
