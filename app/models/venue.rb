class Venue < ActiveRecord::Base
  attr_accessible :venue_name, :website, :time_of_day, :latitude, :longitude, :nytID 
  belongs_to :category
end
