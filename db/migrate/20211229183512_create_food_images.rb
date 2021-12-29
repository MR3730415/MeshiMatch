class CreateFoodImages < ActiveRecord::Migration[5.2]
  def change
    create_table :food_images do |t|
      t.text :shop_name
      t.string :image_id
      t.integer :food_id
      t.text :title
      t.text :caption
      t.text :hour
      t.text :holiday
      t.string :address
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
