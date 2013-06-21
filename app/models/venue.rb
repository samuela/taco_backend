class Venue < ActiveRecord::Base
  attr_accessible :name, :phone_number, :website
  belongs_to :category
  has_many :addresses
  has_one :review
end
