require 'net/http'
require 'uri'
require 'json'
require 'open-uri'
require 'pp'
require 'active_support/all'
#require 'rake'

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
#namespace :cron do
task :get_tags => :environment do

occurences =0 
  result = JSON.parse open('http://nyt-project-taco.herokuapp.com/venues.json').read

  tagsArrayList = Array.new
  hashList = Array.new
  hash=Hash.new #out here to make it global
  
  result.each { |i| 
    tags = i.fetch('tags')
    if (tags != "insert")
        words = tags.split(',')     
        words.each do |word|
        word = word.downcase
        word = word.strip 
          
          if (!tagsArrayList.include?(word) && word != "") #key is the word
              hash[word] = 1
              tagsArrayList.push(word)
              hashList.push(hash)
          else
            if(word != "")
              count = hashList[0][word]
              count += 1
              hashList[0][word] = count
              count = 0
          end
            
          end
        end
    end


    # Massive and unneccessary, but gets the job done!

  }

  option = Option.new :t1 => hashList[0]["organic"].to_s,
  :t2 => hashList[0]["lunch"].to_s,
  :t3 => hashList[0]["brunch"].to_s ,
  :t4 => hashList[0]["cocktail"].to_s,
  :t5 => hashList[0]["dessert"].to_s,
  :t6 => hashList[0]["bar"].to_s,
  :t7 => hashList[0]["dinner"].to_s,
  :t8 => hashList[0]["wine"].to_s,
  :t9 => hashList[0]["local"].to_s,
  :t10 => hashList[0]["american"].to_s,
  :t11 => hashList[0]["nordic"].to_s,
  :t12 => hashList[0]["happy-hour"].to_s,
  :t13 => hashList[0]["cocktails"].to_s,
  :t14 => hashList[0]["beer"].to_s,
  :t15 => hashList[0]["indian"].to_s,
  :t16 => hashList[0]["lounge"].to_s,
  :t17 => hashList[0]["cheese"].to_s,
  :t18 => hashList[0]["private"].to_s,
  :t19 => hashList[0]["tasting"].to_s,
  :t20 => hashList[0]["italian"].to_s,
  :t21 => hashList[0]["italian"].to_s,
  :t22 => hashList[0]["french"].to_s,
  :t23 => hashList[0]["breakfast"].to_s,
  :t24 => hashList[0]["desserts"].to_s,
  :t25 => hashList[0]["steakhouse"].to_s,
  :t26 => hashList[0]["sushi"].to_s,
  :t27 => hashList[0]["drinks"].to_s,
  :t28 => hashList[0]["mediterranean"].to_s,
  :t29 => hashList[0]["delivery"].to_s,
  :t30 => hashList[0]["greek"].to_s

  option.save
  
  #puts "------------------printing out current tags------------------------"
  

  #tagsArrayList.sort
  #tagsArrayList.each do |x|
    #puts x
  #end

end
