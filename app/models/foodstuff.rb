class Foodstuff < ApplicationRecord
  has_many :cuisine_foodstuffs
  has_many :cuisines, through: :cuisine_foodstuffs
end
