#!/bin/bash
# cmp --silent $1 $2 && echo 'Identique' || echo 'Different'
# se placer dans un dossier, et donner l'emplacement du dossier à comparer
# Inspecter aussi les sous dossiers?
#cmp --silent $1 $2 && echo $1' '$2' :Identiques' 
#faire gaffe aux cr lf! surtout que une fois ouvert dans windows, mm avec vim il continue d'ajouter des cr lf
# cool ca marche, faut virer les avertissements "est un dossier" et faudrait pour l'appeler via le bashrc, tout en ayant des chemins relatifs 
#pour un des dossiers

for file1 in $1
	do
	for file2 in *
 		do cmp --silent $file1 $file2 && echo $file1'  '$file2' : Identiques' 
 		done
	done
