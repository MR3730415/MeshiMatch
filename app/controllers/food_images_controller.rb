class FoodImagesController < ApplicationController
  def new
    @food_image = FoodImage.new
  end

  def create
    @food_image = FoodImage.new(food_image_params)
    @food_image.food_id = current_food.id
    @food_image.save
    redirect_to food_images_path
  end

  def index
    @food_images = FoodImage.page(params[:page]).reverse_order
  end

  def show
     @food_image = FoodImage.find(params[:id])
  end

  def destroy
    @food_image = FoodImage.find(params[:id])
    @food_image.destroy
    redirect_to food_images_path
  end
  
  def search
  @food_images = FoodImage.search(params[:keyword])
  @keyword = params[:keyword]
  render "index"
  end
  
  private

  def food_image_params
    params.require(:food_image).permit(:shop_name, :image, :title, :caption, :hour, :holiday, :address, :latitude, :longitude)
  end
end
