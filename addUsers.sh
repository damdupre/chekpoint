#!/bin/bash
#script de création d'utilisateur automatique en fonction des arguments

# verification des arguments
if [ $# -eq 0 ]
then
	echo "Il manque les noms d'utilisateur en arguments - Fin du script -"
	exit 1
fi

#création  utilisateur
function Create ()
{
	User=$@
#verification
if getent passwd $User > /dev/null
then
	echo "l'utilisateur $User existe déjà"
	return 1
fi
#création
useradd -m -s /bin/bash $User
#controle de création
if [ $? -ne 0 ]
then
	echo "Erreur lors de la création de l'utilisateur $User"
	return 1
fi
	echo "L'utilisateur $User à été crée"
}
#controle argument
for arg in "$@"
do
	User=$(echo "$arg" | cut -d: -f1)
	Create "$User"
done

