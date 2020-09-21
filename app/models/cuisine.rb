class Cuisine < ApplicationRecord
  with_options presence: true do
    validates :image
  end
end
