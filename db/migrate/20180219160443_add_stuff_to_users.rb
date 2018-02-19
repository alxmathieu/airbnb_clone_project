class AddStuffToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string
    add_column :users, :avatar, :string
    add_column :users, :is_artist, :boolean, default: false
    add_column :users, :photos, :string, array: true, default: []
    add_column :users, :location, :string
    add_column :users, :bio, :text
  end
end
