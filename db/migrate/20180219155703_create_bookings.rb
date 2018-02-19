class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :performance, foreign_key: true
      t.references :user, foreign_key: true
      t.string :date
      t.string :location
      t.text :work_asked
      t.string :status

      t.timestamps
    end
  end
end
