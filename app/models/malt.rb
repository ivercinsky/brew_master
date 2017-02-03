class Malt < ActiveRecord::Base
  has_many :malt_additions
  has_many :recipes, :through => :malt_additions
end
