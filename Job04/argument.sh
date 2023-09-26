#!/bin/bash



#nom du nouveau fichier
nouveau_fichier="$1"

#nom du fichier source
fichier_source="$2"

#copie le fichier source dans le nouveau fichier
cp "$fichier_source" "$nouveau_fichier"

