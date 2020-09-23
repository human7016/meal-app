class Cuisine < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  with_options presence: true do
    validates :name
  end
  
  validates :category_id, numericality: { other_than: 1 }

  def self.search(search)
    if search != ""
      Cuisine.where(category_id: "#{search}")
    else
      Cuisine.all
    end
  end
end
