require 'rubygems'
require 'oauth'
require 'json'
require 'pp'


###################### YELP Stuff ##########################
consumer_key = 'qIVwnz68UtYXMdwrp_yYaw'
consumer_secret = 'btGUCRfViVQGsBcQ6KdTV0bURUU'
token = 'HwizPcUmFLeuWzUtQd-vqBN2i1HgAP4C'
token_secret = 'MXvsEUDXqohZWdSI4KzHlKzlkZA'

api_host = 'api.yelp.com'

consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
access_token = OAuth::AccessToken.new(consumer, token, token_secret)


path = "/v2/search?term=restaurants&location=new%20york&category_filter=breakfast_brunch"
hugeResult = access_token.get(path).body
jsonResult = JSON.parse(hugeResult)
details = jsonResult['businesses']

puts "\n\n"
puts "-------------------------------------------------------------"
puts "\n"
puts "Breakfast/Brunch"
puts "\n"
puts "-------------------------------------------------------------"
puts "\n"
details.each { |x|
	print "\t"
	print x.fetch('name')  
	puts "\n"  
}

puts "\n"

#################### Yelp Search 2 ##############################
path = "/v2/search?term=restaurants&location=new%20york&category_filter=cafes"
hugeResult = access_token.get(path).body
jsonResult = JSON.parse(hugeResult)

#pp jsonResult