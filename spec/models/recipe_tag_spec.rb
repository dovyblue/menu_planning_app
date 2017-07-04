require 'rails_helper'

describe RecipeTag do
  it 'is valid with recipe_id, tag_id' do
    expect(build(:recipe_tag)).to be_valid
  end

  it 'is not saved without recipe_id' do
    recipe_tag = build(:recipe_tag, recipe_id: nil)
    recipe_tag.valid?
    expect(recipe_tag.errors[:recipe]).to include('must exist')
  end

  it 'is not saved without tag_id' do
    recipe_tag = build(:recipe_tag, tag_id: nil)
    recipe_tag.valid?
    expect(recipe_tag.errors[:tag]).to include('must exist')
  end
end