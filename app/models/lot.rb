class Lot < ActiveRecord::Base
  def self.boroughs
    Lot.select("borough").group("borough").count.keys
  end



end
