class Hour < ActiveRecord::Base
  attr_accessible :closed, :open
  belongs_to :venue
end
