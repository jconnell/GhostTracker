class Ghost < ActiveRecord::Base
  attr_accessible :card_id, :card_name, :location, :planet, :points, :missions
end
