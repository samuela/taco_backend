require 'rubygems'
require 'oauth'

consumer_key = 'qIVwnz68UtYXMdwrp_yYaw'
consumer_secret = 'btGUCRfViVQGsBcQ6KdTV0bURUU'
token = 'HwizPcUmFLeuWzUtQd-vqBN2i1HgAP4C'
token_secret = 'MXvsEUDXqohZWdSI4KzHlKzlkZA'

api_host = 'api.yelp.com'

consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
access_token = OAuth::AccessToken.new(consumer, token, token_secret)


path = "/v2/search?term=restaurants&location=new%20york&category_filter=breakfast_brunch"

p access_token.get(path).body