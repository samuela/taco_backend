class Venue < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :nytID
  belongs_to :category
end
