#!/bin/bash

#récupère les paramètre
nombre1="$1"
operateur="$2"
nombre2="$3"

#verifie les opération et le calcule
case "$operateur" in
	+)
		resultat=$((nombre1 + nombre2))
		;;
	-)
		resultat=$((nombre1 - nombre2))
		;;
	x)
		resultat=$((nombre1 * nombre2))
		;;
	/)
		#vérifie la division par zero
		if ["$nombre2" -eq]; then
			echo "Erreur: division par zero."
			exit 1
		fi
		resultat=$(awk "BEGIN {print $nombre1 / $nombre2}")
		;;
	*)
		echo "Opérateur non valide veuiller utilisez '+', '-', 'x', '/'."
		exit 1
		;;
esac

#affiche le résultat
echo "Le résultat de $nombre1 $operateur $nombre2 est : $resultat"
