class CreatePerformances < ActiveRecord::Migration[5.1]
  def change
    create_table :performances do |t|
      t.integer :price
      t.text :description
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
