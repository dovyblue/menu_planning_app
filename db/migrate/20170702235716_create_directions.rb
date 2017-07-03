class CreateDirections < ActiveRecord::Migration[5.0]
  def change
    create_table :directions do |t|
      t.text :description
      t.integer :step_number
      t.integer :recipe_id

      t.timestamps
    end
  end
end
