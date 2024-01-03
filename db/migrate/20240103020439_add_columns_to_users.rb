class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :phone_number, :integer
    add_column :users, :rating_avg, :integer
    add_column :users, :address, :text
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :about_me, :text
    add_column :users, :role, :text
  end
end
