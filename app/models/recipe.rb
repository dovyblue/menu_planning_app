class Recipe < ApplicationRecord
  has_many :recipe_categories
  has_many :categories, through: :recipe_categories
  has_many :ingredients
  has_many :directions
  has_many :recipe_tags
  has_many :tags, through: :recipe_tags
  has_many :recommended_withs
  has_many :recommended_recipes, through: :recommended_withs
end
