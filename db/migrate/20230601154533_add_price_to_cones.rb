class AddPriceToCones < ActiveRecord::Migration[7.0]
  def change
    add_column :cones, :price, :decimal, precision: 8, scale: 2
  end
end
