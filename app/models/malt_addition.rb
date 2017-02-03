class MaltAddition < ActiveRecord::Base
  belongs_to :malt_addition_moment
  belongs_to :malt
  belongs_to :recipe
end
