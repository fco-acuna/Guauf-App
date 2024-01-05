class ChangeColumnTypeInYourTable < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :phone_number, :bigint
    change_column :dogs, :name, :string
  end
end
