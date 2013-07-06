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
task :import_from_scoop => :environment do
  #JSON Rquest
  #Category.create :feedURL => "currentURLfeed", :nytID => "currentNYTwordID"
  result = JSON.parse open('http://nyt-project-taco.herokuapp.com/venues.json').read
  tagsArrayList = Array.new()

  #Creates a hash where the key is the (word) unique id, and the value is an array containing 
  #the feedURL, categoryName and
  #categoryTitle
  result.each { |i|
    # puts i 
    tags = i.fetch('tags')
    puts tags
    
    if (tags != "insert")
        words = tags.split(',')     
        words.each do |word|

            if (!tagsArrayList.include?(word))
              tagsArrayList.push(word)
            end
        end
    end
  }

  puts "------------------printing out current tags------------------------"

  #tagsArrayList.sort
  tagsArrayList.each do |x|
    puts x
  end

end
