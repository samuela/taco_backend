class Review < ActiveRecord::Base
  attr_accessible :author, :description, :price_range
  belongs_to :venue
end
