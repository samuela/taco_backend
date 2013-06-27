class Address < ActiveRecord::Base
  attr_accessible :city, :crossstreet, :latitude, :longitude, :neighborhood, :street, :zipcode
  belongs_to :venue
  
end
