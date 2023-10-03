#!/bin/bash

#vérifie la valeur de l'argument et affiche le bon message
if [ "$1" = "Hello" ]; then
	echo "Bonjour, je suis un script !"
elif [ "$1" = "Bye" ]; then
	echo "Au revoir et bonne journée !"
elif [ "$1" = "Surprise" ]; then 
	echo "Joyeux Anniversaire!!!"
else
	echo "Argument non reconnu. Utilisez 'Hello' ou 'Bye'."
fi

