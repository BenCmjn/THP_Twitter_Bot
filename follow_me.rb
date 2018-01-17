require 'twitter'
require 'pry'
# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "----------------------"
  config.consumer_secret     = "----------------------"
  config.access_token        = "----------------------"
  config.access_token_secret = "----------------------"
end
p client


# On prend une liste de journalistes
journalists = [
	"@Julien_MARION",
	"@SophiFay",
	"@bdelombre",
	"@annalecerf",
	"@AdriaBudry"
	]

# Pour chaque membre de cette liste (on va prendre leur nom)
journalists.each do |name|
	# On va leur enlever leur arobase…
	name = name.delete"@"
	# Pour pouvoir les follow
	client.follow(name)

	#On va confirmé que c'est follow.
	puts "@#{name} vient d'être follow !"
end



