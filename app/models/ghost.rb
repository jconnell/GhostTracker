class Ghost < ActiveRecord::Base
  attr_accessible :card_id, :card_name, :location, :planet, :points, :missions
  validates :card_id, uniqueness: true
end
