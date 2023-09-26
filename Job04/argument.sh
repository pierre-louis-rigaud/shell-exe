#!/bin/bash

#verifie que le nombre d'argument est correct
if [ $# -ne 2 ]; then
	echo "Usage: $0 <nouveau_fichier> <fichier_source>"
	exit 1
fi

#nom du nouveau fichier
nouveau_fichier="$1"

#nom du fichier source
fichier_source="$2"

#copie le fichier source dans le nouveau fichier
cp "$fichier_source" "$nouveau_fichier"

#vérfie si la copie s'est bien passée
if [ $? -eq 0 ]; then
	echo "Le contenu de $fichier_source a été copié dans $nouveau_fichier."
else
	echo "Erreur lors de la copie du contenu."
fi
