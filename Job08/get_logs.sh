#!/bin/bash

#répertoire de sauvegarde
backup_dir="Backup"

#Crée le répertoire de sauvegard s'il n'existe pas
mkdir -p "$backup_dir"

#Otient la date et l'heure
date_format=$(date +'%d-%m-%Y-%H:%M')

#nom du fichier de sortie
output_file="number_connection-$date_format.log"

#commande qui extrait le nombre de connexions
number_connections=$(who | wc -l)

#Crée le fichier de sortie avec le nbr de connections
echo "Nombre de connexions à la VM : $number_connections" > "$output_file"

#Archive le fichier de sortie dans un fichier tar.gz
tar -czvf "$backup_dir/$output_file.tar.gz" "$output_file"


