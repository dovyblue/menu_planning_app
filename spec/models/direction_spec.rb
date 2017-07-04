require 'rails_helper'

describe Direction do
  it 'is valid with description, step number, recipe_id' do
    expect(build(:direction)).to be_valid
  end

  it 'is invalid without description' do
    direction = build(:direction, description: nil)
    direction.valid?
    expect(direction.errors[:description]).to include("can't be blank")
  end

  it 'is invalid without step_number' do
    direction = build(:direction, step_number: nil)
    direction.valid?
    expect(direction.errors[:step_number]).to include("can't be blank")
  end

  it 'is not saved without recipe_id' do
    direction = build(:direction, recipe_id: nil)
    direction.valid?
    expect(direction.errors[:recipe]).to include('must exist')
  end
end