require 'rails_helper'

describe Ingredient do
  it 'is valid with name, amount, recipe_id' do
    expect(build(:ingredient)).to be_valid
  end

  it 'is invalid without name' do
    ingredient = build(:ingredient, name: nil)
    ingredient.valid?
    expect(ingredient.errors[:name]).to include("can't be blank")
  end

  it 'is invalid without amount' do
    ingredient = build(:ingredient, amount: nil)
    ingredient.valid?
    expect(ingredient.errors[:amount]).to include("can't be blank")
  end

  it 'is not saved without recipe_id' do
    ingredient = build(:ingredient, recipe_id: nil)
    ingredient.valid?
    expect(ingredient.errors[:recipe]).to include('must exist')
  end
end