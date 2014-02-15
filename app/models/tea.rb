class Tea < ActiveRecord::Base
  has_many :drinker_teas
  has_many :drinkers, :through => :drinker_teas
end
