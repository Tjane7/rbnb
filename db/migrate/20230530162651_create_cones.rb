class CreateCones < ActiveRecord::Migration[7.0]
  def change
    create_table :cones do |t|
      t.string :condition
      t.string :type
      t.integer :quantity
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
