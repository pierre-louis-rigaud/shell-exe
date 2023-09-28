#!/bin/bash

#récupère les paramètre
nombre1="$1"
operateur="$2"
nombre2="$3"

#verifie les opération et le calcule
case "$2" in
	+)
		resultat=$(($1 + $3))
		;;
	-)
		resultat=$(($1 - $3))
		;;
	x)
		resultat=$(($1 * $3))
		;;
	/)
		#vérifie la division par zero
		if ["$3" -eq]; then
			echo "Erreur: division par zero."
			exit 1
		fi
		resultat=$(awk "BEGIN {print $1 / $3}")
		;;
	*)
		echo "Opérateur non valide veuiller utilisez '+', '-', 'x', '/'."
		exit 1
		;;
esac

#affiche le résultat
echo "Le résultat de $1 $2 $3 est : $resultat"
