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

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    redirect_to restaurant_path(@restaurant), notice: "Thanks for creating!"
  end

  private

  def restaurant_params
    # strong params(manually & specifically permit parameters)
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
