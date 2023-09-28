#!/usr/bin/bash

destination_dir="Backup"

cd "$destination_dir" || exit 1

#répertoire de sauvegarde
backup_dir="Backup"

#Crée le répertoire de sauvegard s'il n'existe pas
mkdir -p "$backup_dir"


#commande qui extrait le nombre de connexions
number_connections=$(who | grep "$(whoami)" | wc -l)

#Otient la date et l'heure
fichier_de_sortie="$backup_dir/number_connection-$(date +'%d-%m-%Y-%H:%M').tar"


#Crée le fichier de sortie avec le nbr de connections
echo "Nombre de connexions à la VM : $number_connections" > "$fichier_de_sortie" 

#Archive le fichier de sortie dans un fichier tar
tar -cvf "$fichier_de_sortie"  "$fichier_de_sortie" 

#supprime le fichier numbers
rm "$fichier_de_sortie" 


