class CreateRecommendedWiths < ActiveRecord::Migration[5.0]
  def change
    create_table :recommended_withs do |t|
      t.string :recipe_id
      t.string :recommended_recipe_id

      t.timestamps
    end
  end
end
