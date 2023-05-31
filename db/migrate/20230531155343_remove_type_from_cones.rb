class RemoveTypeFromCones < ActiveRecord::Migration[7.0]
  def change
    remove_column :cones, :type, :string
  end
end
