class Recipe < ActiveRecord::Base
  belongs_to :start_water, :class_name => "Water", foreign_key: "start_water_id"
  has_and_belongs_to_many :salts
  belongs_to :mash_water, :class_name => "Water", foreign_key: "mash_water_id"
  has_many :malt_additions
  has_many :malts, :through => :malt_additions
  has_and_belongs_to_many :hops
  belongs_to :yeast
  belongs_to :brewmaster, :class_name => "User", foreign_key: "brewmaster_id"
  has_and_belongs_to_many :collaborators, :class_name => "User"


end
