require 'json'
require 'open-uri'
require 'pp'


tagsArrayList = Array.new
hash = Hash.new

result = JSON.parse open('http://nyt-project-taco.herokuapp.com/venues.json').read
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
       end
    end

end
}



tagsArrayList.each do |word|
	#puts word
end
#pp result
