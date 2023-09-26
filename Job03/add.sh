#!/bin/bash

# demande le permier nombre
read -p "Entrer le permier nombre: " nombre1

# demande le deuxième nombre
read -p "Entrer le deuxième nombre: " nombre2

#formule pour l'addition
resultat=$((nombre1 + nombre2))

#afficher le résultat 
echo "Le résultat de l'addition est : $resultat"
