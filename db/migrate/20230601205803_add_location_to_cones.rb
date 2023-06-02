class AddLocationToCones < ActiveRecord::Migration[7.0]
  def change
    add_column :cones, :location, :string
  end
end
