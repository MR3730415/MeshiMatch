class FoodImage < ApplicationRecord
  belongs_to :food
  attachment :image 
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  has_many :likes, dependent: :destroy

  def likes_by?(user)
    likes.where(user_id: user.id).exists?
  end
  
  def self.search(keyword)
  where(["shop_name like? OR address like?", "%#{keyword}%", "%#{keyword}%"])
  end
  
end
