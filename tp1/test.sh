#!/bin/bash
if [ $# -eq 0 ]
then

echo "la date de jour est :";date
echo "le chemin absolu du répertoire courant est ";pwd
elif [ $# -eq 1 ];then

	if [ -d $1 ];then
	
	ls -l $1|wc -l
	ls -l $1|grep ^-|wc -l
	fi
elif [ $# -eq 2 ];then
	if [ -d $1 -a -d $2 ];then
	ls -l $1|wc -l
	ls -l $2|wc -l
	cp -r $1/* $2
	fi
elif [ $# -eq 3 ];then
echo -e "$1\n$2\n$3">>inter
sort inter
rm inter
else
echo "vérifier le nombre des paramètres ! "

fi

	


