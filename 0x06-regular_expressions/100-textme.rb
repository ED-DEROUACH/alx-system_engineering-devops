#!/usr/bin/env ruby

# Vérification de la présence d'un argument en ligne de commande
if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <texte>"
  exit 1
end

# Stockage de l'argument de ligne de commande dans une variable
log_content = ARGV[0]

# Définition du motif d'expression régulière
pattern = /\[from:(.+)\] \[to:(.+)\] \[flags:(.+\d)\] /

# Utilisation du motif pour trouver des correspondances dans le texte
matches = log_content.scan(pattern)

# Jointure des correspondances en une seule chaîne avec des virgules comme séparateurs
result = matches.join(",")

# Affichage du résultat
puts result
