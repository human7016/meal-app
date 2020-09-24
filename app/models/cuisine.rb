class Cuisine < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :foodstaffs
  belongs_to_active_hash :category
  has_one_attached :image

  with_options presence: true do
    validates :name
  end
  
  validates :category_id, numericality: { other_than: 1 }

  def Cuisine.search(search)
    if search != ""
      Cuisine.where(category_id: "#{search}")
    else
      Cuisine.all
    end
  end
end
