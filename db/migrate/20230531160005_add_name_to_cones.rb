class AddNameToCones < ActiveRecord::Migration[7.0]
  def change
    add_column :cones, :name, :string
  end
end
