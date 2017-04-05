#!/bin/bash
for((i=1;i<=$2;i++))
do

echo  "création de ficher numéro $i de nom $1$i"

echo "tapez 'o' pour validez ou bien 'n' sinon "

read n
if [ $n = 'o' ];then
echo "vous avez validé la creation de ce fichier "

touch $1$i
else
echo "vous avez choisi de ne pas créer ce fichier "
fi
echo -e "\n"
echo -e "\n"
done
