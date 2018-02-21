class AddingDefaultStatusToBooking < ActiveRecord::Migration[5.1]
  def change
    change_column_default(:bookings, :status, false)
  end
end
