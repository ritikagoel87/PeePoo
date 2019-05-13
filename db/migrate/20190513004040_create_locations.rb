class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.text :suburb
      t.text :street
      t.text :house
      t.text :typeOfHouse
      t.text :description
      t.time :availableFrom
      t.time :availableTo
      t.boolean :availability

      t.timestamps
    end
  end
end
