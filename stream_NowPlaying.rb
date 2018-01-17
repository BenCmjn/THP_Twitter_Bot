require 'twitter'

# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = "----------------------"
  config.consumer_secret     = "----------------------"
  config.access_token        = "----------------------"
  config.access_token_secret = "----------------------"
end
p client

# Tu ne sais pas quoi écouter ? Prenons ce qui se joue en ce moment
# sur les internets => #NowPlaying

topics = ["#NowPlaying"]
client.filter(track: topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end


