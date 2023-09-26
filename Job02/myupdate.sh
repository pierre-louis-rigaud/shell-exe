#!/bin/bash

# vérifier que l'utilisateur a les droits sudo
if [[ $EUID -ne 0 ]]; then
	echo "Ce script doit être exécuté en tant qu'administrateur (utiliser sudo)." >&2
	exit 1
fi

# mettre à jour les information sur les paquet
sudo apt update

#mettre à jour les paquet
sudo apt upgrade -y

