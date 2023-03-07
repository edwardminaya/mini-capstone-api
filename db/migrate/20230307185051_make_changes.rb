class MakeChanges < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :description, :text
    change_column :products, :price, :decimal, precision: 10, scale: 2
    add_column :products, :inventory_quantity, :integer
  end
end
