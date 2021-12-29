Rails.application.routes.draw do
  devise_for :foods
   root to: 'homes#top'
   resources :food_images, only: [:new, :create, :index, :show, :destroy]
end
