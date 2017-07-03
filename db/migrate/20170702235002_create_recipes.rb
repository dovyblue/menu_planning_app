class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :photo
      t.text :description
      t.integer :prep_time
      t.integer :serving
      t.string :difficulty
      t.string :preference

      t.timestamps
    end
  end
end
