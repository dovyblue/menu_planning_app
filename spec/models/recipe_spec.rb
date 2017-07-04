require 'rails_helper'

describe Recipe do
  it 'is valid with title, photo, description, prep_time, serving, difficulty, preference' do
    expect(build(:recipe)).to be_valid
  end

  it 'is invalid without title' do
    recipe = build(:recipe, title: nil)
    recipe.valid?
    expect(recipe.errors[:title]).to include("can't be blank")
  end
  it 'is invalid without prep_time' do
    recipe = build(:recipe, prep_time: nil)
    recipe.valid?
    expect(recipe.errors[:prep_time]).to include("can't be blank")
  end
  it 'is invalid without serving' do
    recipe = build(:recipe, serving: nil)
    recipe.valid?
    expect(recipe.errors[:serving]).to include("can't be blank")
  end
  it 'is invalid without difficulty' do
    recipe = build(:recipe, difficulty: nil)
    recipe.valid?
    expect(recipe.errors[:difficulty]).to include("can't be blank")
  end
  it 'is invalid without preference' do
    recipe = build(:recipe, preference: nil)
    recipe.valid?
    expect(recipe.errors[:preference]).to include("can't be blank")
  end
end