class AddDescriptionToCones < ActiveRecord::Migration[7.0]
  def change
    add_column :cones, :description, :string
  end
end
