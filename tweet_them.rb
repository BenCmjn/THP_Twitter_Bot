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
	
	# on va prendre leur envoyé un petit tweet
	client.update(name+' bonjour ! Je suis élève à @the_hacking_pro une formation gratuite au code et je viens de faire un bot Twitter qui te suis !')
	
	#On va confirmé que c'est liké.
	puts "Tweet envoyé à #{name} !"
end





