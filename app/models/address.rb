class Address < ActiveRecord::Base
  attr_accessible :neighborhood
  belongs_to :venue
end
