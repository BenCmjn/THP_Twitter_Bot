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
	# on va prendre leur 10 derniers tweets
	tweet_id = client.user_timeline(name)

	#On va les liker
	client.favorite(tweet_id)
	#On va confirmé que c'est liké.
	puts "Tweet de #{name} N°#{tweet_id} Liké !"
end




