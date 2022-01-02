class LikesController < ApplicationController
  
  def create
    food_image = FoodImage.find(params[:food_image_id])
    like = current_user.likes.new(food_image_id: food_image.id)
    like.save
    redirect_to food_image_path(food_image)  end

  def destroy
    food_image = FoodImage.find(params[:food_image_id])
    like = current_user.likes.find_by(food_image_id: food_image.id)
    like.destroy
    redirect_to food_image_path(food_image)  
  end
end
