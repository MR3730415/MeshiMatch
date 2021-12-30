class FoodsController < ApplicationController
  def show
    @food = Food.find(params[:id])
    @food_images = @food.food_images
  end
end
