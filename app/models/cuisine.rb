class Cuisine < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :cuisine_foodstuffs
  has_many :foodstuffs, through: :cuisine_foodstuffs 
  belongs_to_active_hash :category
  has_one_attached :image

  with_options presence: true do
    validates :name
  end
  
  validates :category_id, numericality: { other_than: 1 }

  def Cuisine.search_index(cuisine_params)
    if cuisine_params[:category_id] != 1
      Cuisine.where(category_id: "#{cuisine_params[:category_id]}")
    else
      Cuisine.all
    end
  end

  def Cuisine.search(cuisine_params)
    array = []
    if cuisine_params[:category_id] != 1
      if cuisine_params[:foodstuff] != ""
        cuisines = Cuisine.where(category_id: "#{cuisine_params[:category_id]}")
        cuisines.each do |cuisine|
          array << cuisine
        end
        foodstuffs = Foodstuff.where(name: "#{cuisine_params[:foodstuff]}")
        foodstuffs.each do |foodstuff|
          array << foodstuff
        end
        return array
      else
        cuisines = Cuisine.where(category_id: "#{cuisine_params[:category_id]}")
        cuisines.each do |cuisine|
          array << cuisine
        end
        return array
      end
    else
      if foodstuff != ""
        foodstuffs = Foodstuff.where(name: "#{cuisine_params[:foodstuff]}")
        foodstuffs.each do |foodstuff|
          array << foodstuff
        end
        return array
      else
        Cuisine.all
      end
    end
  end

end
