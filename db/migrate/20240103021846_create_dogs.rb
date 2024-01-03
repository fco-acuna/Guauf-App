class CreateDogs < ActiveRecord::Migration[7.0]
  def change
    create_table :dogs do |t|
      t.integer :name
      t.date :date_of_birth
      t.text :breed
      t.string :size
      t.text :vaccines
      t.text :sickness_allergies
      t.text :about_me
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
