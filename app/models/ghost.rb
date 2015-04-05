class Ghost < ActiveRecord::Base
  attr_accessible :card_id, :location, :planet
end
