class CuisinesController < ApplicationController

  def index
    @cuisines = Cuisine.search_index(cuisine_params)
  end

  def new
  end

  def create
  end
  
  def show
    @cuisine = Cuisine.find(params[:id])
  end

  def search
    cuisines = Cuisine.search(cuisine_params)
    @cuisine = cuisines[rand(0..(cuisines.length - 1))]
  end

  private

  def cuisine_params
    params.permit(:category_id, :foodstuff)
  end
end
