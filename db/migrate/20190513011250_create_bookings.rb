class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.time :timeIn
      t.time :timeOut
      t.float :amount
      t.integer :amenities_id
      t.integer :user_id

      t.timestamps
    end
  end
end
