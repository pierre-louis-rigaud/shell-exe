#!/bin/bash

#récupère l'argument 
argument="$1"

#vérifie la valeur de l'argument et affiche le bon message
if [ "$argument" = "Hello" ]; then
	echo "Bonjour, je suis un script !"
elif [ "$argument" = "Bye" ]; then
	echo "Au revoir et bonne journée !"
elif [ "$argument" = "Surprise" ]; then 
	echo "Joyeux Anniversaire!!!"
else
	echo "Argument non reconnu. Utilisez 'Hello' ou 'Bye'."
fi

