require 'rails_helper'

describe RecipeCategory do
  it 'is valid with recipe_id, category_id' do
    expect(build(:recipe_category)).to be_valid
  end

  it 'is not saved without recipe_id' do
    recipe_category = build(:recipe_category, recipe_id: nil)
    recipe_category.valid?
    expect(recipe_category.errors[:recipe]).to include('must exist')
  end

  it 'is not saved without category_id' do
    recipe_category = build(:recipe_category, category_id: nil)
    recipe_category.valid?
    expect(recipe_category.errors[:category]).to include('must exist')
  end
end