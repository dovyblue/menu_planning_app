class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.date :date
      t.string :main_dish
      t.string :side_1
      t.string :side_2
      t.string :side_3
      t.string :salad
      t.string :starter
      t.string :dessert
      t.string :soup

      t.timestamps
    end
  end
end
