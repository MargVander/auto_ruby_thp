require 'launchy'

search = ARGV
abort("Tu dois écrire ce que tu recherches après le nom du programme !") if ARGV.empty?
Launchy.open("https://www.google.com/search?q=#{search.join("+")}") 