class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|

      t.references :user, foreign_key: true
      t.string :artist_photo
      t.timestamps
    end

    remove_column :users, :photos
  end
end
