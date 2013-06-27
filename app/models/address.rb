class Address < ActiveRecord::Base
  attr_accessible :city, :crossstreet, :latitude, :longitude, :neighborhood, :street, :zipcode
  has_one :venues
  
end
