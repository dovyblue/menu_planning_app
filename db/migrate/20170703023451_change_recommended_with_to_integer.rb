class ChangeRecommendedWithToInteger < ActiveRecord::Migration[5.0]
  def change
    change_column :recommended_withs, :recipe_id, 'integer USING CAST(recipe_id AS integer)'
    change_column :recommended_withs, :recommended_recipe_id, 'integer USING CAST(recommended_recipe_id AS integer)'
    

  end
end
