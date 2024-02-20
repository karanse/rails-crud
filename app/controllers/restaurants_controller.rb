class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [ :show, :edit, :update, :destroy ]

  def index
    # fetch all the restaurants
    @restaurants = Restaurant.all
  end

  def show
    # find a restaurant by id
    # raise
    # id = params[:id]
    # @restaurant = Restaurant.find(id)
    # set_restaurant()
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    # @restaurant = Restaurant.create(restaurant_params)
    # set_restaurant()
    redirect_to restaurant_path(@restaurant), notice: "Thanks for creating!"
  end

  def edit
    # fetch the given restaurant
    # @restaurant = set_restaurant
  end

  def update
    # find the given restaurant by id
    #updte the attributes
    # @restaurant = set_restaurant
    @restaurant.update(strong_params)

    redirect_to restaurant_path(@restaurant.id)
  end

  def destroy
    # find the given restaurant by id
    # delete it
    # @restaurant = set_restaurant
    @restaurant.destroy

    redirect_to restaurant_path, status: :see_other
  end

  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    # strong params(manually & specifically permit parameters)
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
