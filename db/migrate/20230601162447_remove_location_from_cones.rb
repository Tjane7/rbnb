class RemoveLocationFromCones < ActiveRecord::Migration[7.0]
  def change
    remove_column :cones, :location, :string
  end
end
