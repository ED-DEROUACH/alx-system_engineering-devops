#!/usr/bin/env ruby

# Vérification de la présence d'un argument en ligne de commande
if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <texte>"
  exit 1
end

# Stockage de l'argument de ligne de commande dans une variable
texte_a_rechercher = ARGV[0]

# Définition du motif de l'expression régulière
motif = /hb?tn/

# Utilisation de la méthode scan pour trouver toutes les correspondances dans le texte d'entrée
correspondances = texte_a_rechercher.scan(motif)

# Jointure des correspondances en une seule chaîne de caractères
resultat = correspondances.join

# Affichage du résultat
puts resultat
