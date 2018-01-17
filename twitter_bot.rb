require 'twitter'

# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "----------------------"
  config.consumer_secret     = "----------------------"
  config.access_token        = "----------------------"
  config.access_token_secret = "----------------------"
end
p client

# Let's tweet every minute for an hour!
minute = 0

while minute < 60 # Jusqu'à la 60e minute
	minute += 1 # toutes les minute
		if minute > 1 # petit if pour ajouter un "s" après la 1e minute
			lettre = "s"
			else
			lettre = "" # Sinon pas de "s"
		end
	client.update("Bonjour, je vis depuis #{minute} minute#{lettre} !")	
	puts "J'ai twitté #{minute} fois"
	# puts "Bonjour, je vis depuis #{minute} minute#{lettre} !"
	# ^ Pour Tester en local

	sleep(60) # Repose-toi pendant 60 secondes
	
end

