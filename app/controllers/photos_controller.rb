class PhotosController < ApplicationController
  def index
    @food_images = FoodImage.page(params[:page]).reverse_order
  end

  def show
     @food_image = FoodImage.find(params[:id])
  end

end
