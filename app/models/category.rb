class Category < ActiveRecord::Base
  attr_accessible :feedURL, :nytID
  has_many :venues
end
