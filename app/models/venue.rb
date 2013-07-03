class Venue < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :nytID, :time_of_day, :venue_name, :website
  belongs_to :category
end
