class FoodImage < ApplicationRecord
  belongs_to :food
  attachment :image 
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
