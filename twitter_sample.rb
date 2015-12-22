require 'json'
require 'oauth'

consumer_key = '#'
consumer_secret = '#'
access_token =  '#'
access_token_secret = '#'

consumer = OAuth::Consumer.new(
  consumer_key, 
  consumer_secret,
  site:'https://api.twitter.com/'
  )
endpoint = OAuth::AccessToken.new(consumer, access_token, access_token_secret)

# GET
response = endpoint.get("https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name=twitterapi&count=2")
result = JSON.parse(response.body)
p result

# POST
response = endpoint.post("https://api.twitter.com/1.1/statuses/update.json", status: 'tweet messageには 日本語が使えます。' )
result = JSON.parse(response.body)
