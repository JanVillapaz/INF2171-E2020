# Chapitre 2 - Note de Cours

La memoire est un ensemble de cellules.
1K = 1024
1 Meg = 1024 ^ 2
1 Gig = 1024 * 1024 * 1024

Chaque cellules est associee a une adresse par laquelle les autres composantes la designent.
Ces adresses sont des nombres variant normalement entre 0 et le nombre de cellules de memoire - 1 (lenght - 1)
Ex: 4K = 0 to 4095 (1024 * 4 = 4096)

Chaque cellule est composee d'un nombre fixe de bits.
Un bit est l'unite fondamentale d'information traitee par un ordinateur
Chaque bit peut avoir deux valeur: 0 ou 1
Une suite de bits nous permet donc de representer un nombre binaire
Ex: Une cellule de 8 bits permet de representer tous les nombres binaires entre 00000000 11111111 = 0 to 255 en base de 10
Le nombre de bits par cellule peut varier entre 8 et 64 bits selon le modele d'ordi
Une dellule de 8 bits est appelee un octet (ou byte en anglaiS)

Un cellule de memoire ne peut contenir qu'une seule valeur a la fois, le stockage d'une nouvelle valeur detruisant 
l'ancienne valeur contenue dans la cellule
