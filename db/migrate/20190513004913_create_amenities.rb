class CreateAmenities < ActiveRecord::Migration[5.2]
  def change
    create_table :amenities do |t|
      t.integer :toilet
      t.integer :bath
      t.integer :shower
      t.integer :baby
      t.integer :location_id
      t.integer :rating
      t.float :price
      t.text :image

      t.timestamps
    end
  end
end
