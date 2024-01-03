class CreateWalkers < ActiveRecord::Migration[7.0]
  def change
    create_table :walkers do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :age

      t.timestamps
    end
  end
end
