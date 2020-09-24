class CuisinesController < ApplicationController

  def index
    @cuisines = Cuisine.search(params[:category_id])
  end

  def new
  end

  def create
  end
  
  def show
    @cuisine = Cuisine.find(params[:id])
  end

  def search
    cuisines = Cuisine.search(params[:category_id])
    @cuisine = cuisines[rand(0..(cuisines.length - 1))]
  end

  private

  def cuisine_params
    params.riquire(:cuisine).permit(:category_id, :foodstaff)
  end
end
