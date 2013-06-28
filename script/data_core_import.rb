require 'net/http'
require 'uri'
require 'json'
require 'open-uri'
require 'pp'
require 'active_support/all'

#Category Unique ID's (in order):
#--------------------------
# Get data for these for now
# restaurants
# bars
# coffeeshops
#---------------------------
# art
# theater
# musicdance
# timeless -- (Only in New York)
# More Events
#--------------------------------

#JSON Rquest
result = JSON.parse open('http://scoopapp.nytimes.com/iphone/scoop/category/newcategorylist.json').read

#Constants
CONSTANT_NUM_FEEDS = 12
CONSTANT_NUM_CATEGORIES = 12

#Data Structures
arrayOfFeeds = Array.new(CONSTANT_NUM_FEEDS) #array of URL Feeds
arrayOfUniqueIDs = Array.new(CONSTANT_NUM_CATEGORIES) #array Of (Word) Unique ID's
counter = 0
arrayOfHashes = [] #creating hashList - appending hashes with key as uniqueID, and value is an array of stuff
defaultKeys = ["restaurants", "bars", "coffeeshops","art","theater","musicdance","summer","timeless","kids",
  "househome","daytrips", "moreevents"] #keeping track of categories

#Creates a hash where the key is the (word) unique id, and the value is an array containing 
#the feedURL, categoryName and
#categoryTitle
result['categories'].each { |i|
  puts i 
  hash = Hash.new()
  hash =  {"#{i['uniqueID']}" => [counter,"#{i['feedURL']}", "#{i['categoryName']}", "#{i['categoryTitle']}" ]}
	
	arrayOfHashes.push(hash)
	arrayOfUniqueIDs[counter] = "#{i['uniqueID']}"
	arrayOfFeeds[counter] = "#{i['feedURL']}"
	counter+=1
}

#Debugging purposes, printing out our hashList
arrayOfHashes.each do  |key,value| 
  puts "\t#{key}: $#{value}"
  puts "\n"
end

puts "\n"

#Each individual array will contain a unique number id, a feedURL, and its category Name --> Taking
#each hash and reating arrays for easy iteration
#Each individual array is then added to an arrayList, called arrayInfo
arrayInfo = Array.new()
j = 0
arrayOfHashes.each do  |x| 
  array = Array.new()
  #can get the word unique id by just accessing arrayOfUniqIDs[j]
  array.push(x[arrayOfUniqueIDs[j]][0]) # Number ID
  array.push(x[arrayOfUniqueIDs[j]][1]) # FeedURL
  array.push(x[arrayOfUniqueIDs[j]][3]) # CategoryTitle
  arrayInfo.push(array)
  j+=1
end

puts "\t--------------------------------------------------------------------------"

# Iterates through the arrayList created from above, goes into the JSON list param, 
#then looks into the items array (which is with in the JSON list param), 
#and searches for every id with in the giant items array

#TODO: Inject each id generated into our database 
j = 0
counter = 0
arrayInfo.each do |x|
  jsonDataFromURLFeed =JSON.parse open(x[1]).read #x[1] contains all URLfeeds
  parse = jsonDataFromURLFeed.fetch("list").fetch("items") #fetching all the items in the list
  parse.each do |x| #Going through every ID in the item
    id = x.fetch('id')
    puts id
    counter += 1

    #Insert ID into Venue!
    #Venue.create(id)
  end
  #Finished With URLFeed
  
end

puts counter