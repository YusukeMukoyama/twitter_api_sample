require 'json'
require 'oauth'

consumer_key = '1pOTpFomIMqEGmPTTUlzUkPvI'
consumer_secret = 'pOSx203U0366Rzl4RmMisUJLxaga39pfBElJ8umjDod1yrSoog'
access_token =  '111519936-LQofP6WNMjuuneRTITl71M4uW2eApmVvcA1MQych'
access_token_secret = '65hzML3emomyb1gcfaBY7fuZnBFf32nLNiH4CIDbObb3q'

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
