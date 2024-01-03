class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.integer :walking_time
      t.float :price
      t.float :distance
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
