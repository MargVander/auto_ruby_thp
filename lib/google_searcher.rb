require 'launchy'

search = ARGV
abort("search quoi ?") if ARGV.empty?
Launchy.open("https://www.google.com/search?q=#{search.join("+")}") 