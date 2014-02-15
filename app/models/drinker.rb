class Drinker < ActiveRecord::Base
  has_many :drinker_teas
  has_many :teas, :through => :drinker_teas
end


