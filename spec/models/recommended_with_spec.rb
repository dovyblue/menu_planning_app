require 'rails_helper'

describe RecommendedWith do
  it 'is valid with recipe_id, recommended_recipe_id' do
    expect(build(:recommended_with)).to be_valid
  end

  it 'is not saved without recipe_id' do
    recommended_with = build(:recommended_with, recipe_id: nil)
    recommended_with.valid?
    expect(recommended_with.errors[:recipe]).to include('must exist')
  end

  it 'is not saved without recommended_recipe_id' do
    recommended_with = build(:recommended_with, recommended_recipe_id: nil)
    recommended_with.valid?
    expect(recommended_with.errors[:recommended_recipe]).to include('must exist')
  end
end
