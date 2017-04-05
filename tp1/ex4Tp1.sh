#!/bin/bash
if [ ! -d ~/.trash ];then
mkdir ~/.trash
fi

PS3="Votre choix :"
select choix in "Afficher le contenu de la poubelle" "Restaurer un fichier" "Supprimer un fichier" "Fin"
do
echo "vous avez choisi le choix numéro $REPLY"

if [[ $REPLY -eq 1 ]];then
ls ~/.trash
echo -e "\n\n"
elif [[ $REPLY -eq 2 ]];then
echo "donner le nom de fichier à restaurer"
read fichRest
mv ~/.trash/$fich ~/$fichRest
echo -e "\n\n"
elif [[ $REPLY -eq 3 ]];then
echo "donner le nom de fichier à supprimer"
read fichSupp
rm ~/.trash/$fichSupp 
echo -e "\n\n"
elif [[ $REPLY -eq 4 ]];then
echo -e "\n\n"
echo "à bientôt !"
break
else
echo "vérifier s'il vous plait le numéro de votre choix"
fi


done

