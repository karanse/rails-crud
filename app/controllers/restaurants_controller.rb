class RestaurantsController < ApplicationController
  def index
    # fetch all the restaurants
    @restaurants = Restaurant.all
  end

  def show
    # find a restaurant by id
    # raise
    id = params[:id]
    @restaurant = Restaurant.find(id)
  end
end
