require 'rails_helper'

describe Day do
  it 'is valid with main dish, side_1, side_2, side_3, salad, starter, dessert, soup' do
    expect(build(:day)).to be_valid
  end
  it 'is invalid without date' do
    day = build(:day, date: nil)
    day.valid?
    expect(day.errors[:date]).to include("can't be blank")
  end
end
