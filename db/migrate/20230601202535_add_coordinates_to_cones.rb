class AddCoordinatesToCones < ActiveRecord::Migration[7.0]
  def change
    add_column :cones, :latitude, :float
    add_column :cones, :longitude, :float
  end
end
