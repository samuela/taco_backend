class Venue < ActiveRecord::Base
  attr_accessible :venue_name, :website, :tags, :latitude, :longitude, :nytID 
  belongs_to :category
end
