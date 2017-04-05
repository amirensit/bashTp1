#!/bin/bash
function compte () 
{
user_exists=$(id -u $a > /dev/null 2>&1;echo $?)
if [ $user_exists = 0 ]
then echo  0
#then return  0
else
echo 1
#return 1
fi
}
function connexion () {
who |grep ^$a$ > /dev/null 2>&1
if [ $? = 0 ];then
echo "cet utilisateur est connecté"
else
echo "cet utilisateur n'est pas  connecté"
fi
}
function userId ()
{
 echo $(id -u $a)
 
}
if [ $# -eq 1 ];then
a=$1
#b=$(compte)

#if [[ $b -eq 0 ]];then
if [[ $(compte) -eq 0 ]];then
echo "existe"
else
echo "n'existe pas"

fi
connexion
userId
else
echo "erreur ! il faut avoir un seul paramètre "
fi
