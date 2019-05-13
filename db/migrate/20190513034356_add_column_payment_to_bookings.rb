class AddColumnPaymentToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :payment, :boolean
  end
end
