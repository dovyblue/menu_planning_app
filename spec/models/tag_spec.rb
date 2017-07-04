require 'rails_helper'

describe Tag do
  it 'is valid with name' do
    expect(build(:tag)).to be_valid
  end
  
  it 'is invalid without name' do
    tag = build(:tag, name: nil)
    tag.valid?
    expect(tag.errors[:name]).to include("can't be blank")
  end
end
