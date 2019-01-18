name_file = ARGV
if ARGV.empty?
	abort("Tu as oublié d'indiquer le nom de ton fichier !")
else
	name_file = name_file.join(" ")
	Dir.mkdir(name_file)

end

gemfile = File.open("#{name_file}/Gemfile", "w")
gemfile.puts("source 'https://rubygems.org'
ruby '2.5.1'
gem 'rspec'
gem 'pry'
gem 'rubocop', '~> 0.57.2'
gem 'nokogiri'
gem 'watir'
gem 'launchy'")
#création du gemfile remplis terminé
	
envfile = File.open("#{name_file}/.env", "w")
#création du fichier .env

gitignorefile = File.open("#{name_file}/.gitignore", "w")
gitignorefile.puts(".env")
#création du fichier .gitognore dans lequel on met le .env

readmefile = File.open("#{name_file}/README.md", "w")
readmefile.puts("C'est un programme ruby")
#création d'un README.

libfolder = Dir.mkdir("#{name_file}/lib")
#création du dossier lib